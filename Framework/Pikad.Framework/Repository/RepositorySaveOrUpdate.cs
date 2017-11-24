using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Bargozideh.Framework.Repository.Command;
using Bargozideh.Framework.Repository.Extensions;
using Bargozideh.Framework.UnitOfWork;
using Dapper;
//using System.Data.Entity;

namespace Bargozideh.Framework.Repository
{
    public abstract partial class Repository<TEntity, TPk>
        where TEntity : class
        where TPk : IComparable
    {
        public void SaveBatch(List<TEntity> list, IUnitOfWork uow,string sqlCommand,string parametereName,string parameterType)
        {

            //table-valued parameters perform well for inserting less than 1000 rows.
            try
            {
                if (list.Count <= 900)
                {
                    var command = new CustomCommand
                    {
                        CommandType = CommandType.StoredProcedure,
                        SqlCommand = sqlCommand,
                        Parameters = new DynamicParameters()
                    };
                    var valuedParameter = ConvertToDataTable(list).AsTableValuedParameter(parameterType);
                    command.Parameters.Add(parametereName, valuedParameter);
                    Save(command, uow);
                }
                else //bulk insert
                {
                     BulkInsert((SqlConnection)uow.Connection,list);
                    //using (unitOfWork.Connection)
                   
                }
            }
            catch (Exception ex)
            {
                //Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        public static void BulkInsert<T>(SqlConnection connection , IEnumerable<T> list, int batchSize = 0, string table = null)
        {
            using (var bulkCopy = new SqlBulkCopy(connection))
            {
                var type = typeof(T);

                var tableName = type.Name;
                var tableAttribute = (TableAttribute)type.GetCustomAttributes(typeof(TableAttribute), false).FirstOrDefault();
                if (tableAttribute != null)
                {
                    var schemaName = String.IsNullOrWhiteSpace(tableAttribute.Schema) ? tableAttribute.Schema + "." : "";
                    tableName = schemaName + tableAttribute.Name;
                }
                if (table != null) tableName = table;

                bulkCopy.BatchSize = batchSize;
                bulkCopy.DestinationTableName = tableName;

                var dataTable = new DataTable();
                var props = TypeDescriptor.GetProperties(typeof(T))
                    //Dirty hack to make sure we only have system data types 
                    //i.e. filter out the relationships/collections
                    .Cast<PropertyDescriptor>()
                    .Where(propertyInfo => propertyInfo.PropertyType.Namespace.Equals("System"))
                    .Where(i => !i.Attributes.OfType<DatabaseGeneratedAttribute>().Any())
                    .Where(i => !i.Attributes.OfType<NotMappedAttribute>().Any())
                    .ToArray();

                foreach (var propertyInfo in props)
                {
                    var colName = propertyInfo.Name;

                    var colAttribute = propertyInfo.Attributes.OfType<ColumnAttribute>().FirstOrDefault();
                    if (colAttribute != null) colName = colAttribute.Name;

                    bulkCopy.ColumnMappings.Add(propertyInfo.Name, colName);
                    dataTable.Columns.Add(propertyInfo.Name, Nullable.GetUnderlyingType(propertyInfo.PropertyType) ?? propertyInfo.PropertyType);
                }

                var values = new object[props.Length];
                foreach (var item in list)
                {
                    for (var i = 0; i < values.Length; i++)
                    {
                        values[i] = props[i].GetValue(item);
                    }

                    dataTable.Rows.Add(values);
                }

                bulkCopy.WriteToServer(dataTable);
            }
        }

        private DataTable ConvertToDataTable<T>(IList<T> data)
        {
            PropertyDescriptorCollection properties =
                TypeDescriptor.GetProperties(typeof(T));
            DataTable table = new DataTable();
            foreach (PropertyDescriptor prop in properties)
                table.Columns.Add(prop.Name, Nullable.GetUnderlyingType(prop.PropertyType) ?? prop.PropertyType);
            foreach (T item in data)
            {
                DataRow row = table.NewRow();
                foreach (PropertyDescriptor prop in properties)
                    row[prop.Name] = prop.GetValue(item) ?? DBNull.Value;
                table.Rows.Add(row);
            }
            return table;

        }
        public virtual TPk SaveOrUpdate(TEntity entity, IUnitOfWork uow)
        {
            try
            {
                if (TryAllKeysDefault(entity))
                {
                    uow.Insert(entity);
                }
                else
                {
                    uow.Update(entity);
                }
                var primaryKeyValue = GetPrimaryKeyValue(entity);
                return primaryKeyValue != null ? primaryKeyValue : default(TPk);
            }
            catch (Exception ex)
            {
                uow.Rollback();
                throw ex;
            }
        }

        public TPk SaveOrUpdate(TEntity entity)
        {
            try
            {

                using (var uow = Factory.Create<IUnitOfWork, ISession>(IsolationLevel.Serializable))
                {
                    try
                    {
                        return SaveOrUpdate(entity, uow);
                    }
                    catch (Exception ex)
                    {
                        uow.Rollback();
                        throw ex;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public virtual TPk Save(TEntity entity, IUnitOfWork uow)
        {
            try
            {
                //if (TryAllKeysDefault(entity))
                {
                    uow.Insert(entity);
                }
                var primaryKeyValue = GetPrimaryKeyValue(entity);
                return primaryKeyValue != null ? primaryKeyValue : default(TPk);
            }
            catch (Exception ex)
            {
                uow.Rollback();
                throw ex;
            }
        }


        public TPk Save(TEntity entity)
        {
            try
            {

                using (var uow = Factory.Create<IUnitOfWork, ISession>(IsolationLevel.Serializable))
                {
                    try
                    {
                        //if (TryAllKeysDefault(entity))
                        {
                            uow.Insert(entity);
                        }
                        var primaryKeyValue = GetPrimaryKeyValue(entity);
                        return primaryKeyValue != null ? primaryKeyValue : default(TPk);
                    }
                    catch (Exception ex)
                    {
                        uow.Rollback();
                        throw ex;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public virtual TPk Save(CustomCommand command)
        {
            try
            {
                return Session.Connection.ExecuteScalar<TPk>(new CommandDefinition(command.SqlCommand, command.Parameters, commandType: command.CommandType));
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public virtual TPk Save(CustomCommand command, IUnitOfWork uow)
        {
            try
            {
                return uow.Connection.ExecuteScalar<TPk>(new CommandDefinition(command.SqlCommand, command.Parameters, uow.Transaction, commandType: command.CommandType));
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public virtual TPk Update(CustomCommand command)
        {
            try
            {
                return Session.Connection.ExecuteScalar<TPk>(new CommandDefinition(command.SqlCommand, command.Parameters, commandType: command.CommandType));
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public virtual TPk Update(CustomCommand command, IUnitOfWork uow)
        {
            try
            {
                return uow.Connection.ExecuteScalar<TPk>(new CommandDefinition(command.SqlCommand, command.Parameters, uow.Transaction, commandType: command.CommandType));
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public virtual void SaveOnly(CustomCommand command)
        {
            try
            {
               Session.Connection.Execute(new CommandDefinition(command.SqlCommand, command.Parameters, commandType: command.CommandType));
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public virtual void SaveOnly(CustomCommand command, IUnitOfWork uow)
        {
            try
            {
                uow.Connection.Execute(new CommandDefinition(command.SqlCommand, command.Parameters, uow.Transaction, commandType: command.CommandType));
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public virtual void UpdateOnly(CustomCommand command)
        {
            try
            {
               Session.Connection.Execute(new CommandDefinition(command.SqlCommand, command.Parameters, commandType: command.CommandType));
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public virtual void UpdateOnly(CustomCommand command, IUnitOfWork uow)
        {
            try
            {
                uow.Connection.Execute(new CommandDefinition(command.SqlCommand, command.Parameters, uow.Transaction, commandType: command.CommandType));
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public virtual TPk SaveOrUpdate<TSesssion>(TEntity entity) where TSesssion : class, ISession
        {
            using (var uow = Factory.Create<IUnitOfWork, TSesssion>())
            {
                try
                {
                    return SaveOrUpdate(entity, uow);
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }

        public virtual Task<TPk> SaveOrUpdateAsync(TEntity entity, IUnitOfWork uow)
        {
            return Task.Run(() =>
            {
                if (TryAllKeysDefault(entity))
                {
                    uow.InsertAsync(entity);
                }
                else
                {
                    uow.UpdateAsync(entity);
                }
                var primaryKeyValue = GetPrimaryKeyValue(entity);
                return primaryKeyValue != null ? primaryKeyValue : default(TPk);
            });
        }

        public virtual async Task<TPk> SaveOrUpdateAsync<TSesssion>(TEntity entity) where TSesssion : class, ISession
        {
            using (var uow = Factory.Create<IUnitOfWork, TSesssion>())
            {
                return await SaveOrUpdateAsync(entity, uow);
            }
        }
        //public virtual int Save(TEntity entity)
        //{
        //    _DataContext.Entry(entity).State = EntityState.Added;
        //    return _DataContext.SaveChanges();
        //}

        //public virtual async Task<int> SaveAsync(TEntity entity)
        //{
        //    _DataContext.Entry(entity).State = EntityState.Added;
        //    return await _DataContext.SaveChangesAsync();
        //}
        //public virtual int Update(TEntity entity)
        //{
        //    _DataContext.Entry(entity).State = EntityState.Modified;
        //    return _DataContext.SaveChanges();
        //    //_DataContext.Entry(entity).State = EntityState.Detached;
        //}

        //public virtual async Task<int> UpdateAsync(TEntity entity)
        //{
        //    _DataContext.Entry(entity).State = EntityState.Modified;
        //    return await _DataContext.SaveChangesAsync();
        //    //_DataContext.Entry(entity).State = EntityState.Detached;
        //}
    }
}
