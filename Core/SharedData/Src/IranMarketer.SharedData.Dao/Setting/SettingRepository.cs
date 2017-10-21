using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Linq.Expressions;
using Dapper;
using Newtonsoft.Json;
using Pikad.Framework.Infra.Logging;
using Pikad.Framework.Repository;
using Pikad.Framework.Repository.Command;
using Pikad.Framework.UnitOfWork;
using Pikad.Framework.UnitOfWork.Helpers;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.Entity;
using IranMarketer.Domain.Enum;
using IranMarketer.SharedData.Service;

namespace IranMarketer.SharedData.Dao.Setting
{
    public class SettingRepository : Repository<BaseSetting, int>, ISettingRepository
    {
        private CustomLogger Logger => new CustomLogger(GetType().FullName);
        public SettingRowMapper SettingRowMapper { get; set; }
        public SettingRepository(IDbFactory factory) : base(factory)
        {
        }

        public int SaveSetting(object settingToSave, SettingType settingType, string createdBy,
             DateTime fromDate = default(DateTime), DateTime? toDate = null)
        {
            try
            {
                var command = new CustomCommand
                {
                    CommandType = CommandType.StoredProcedure,
                    Parameters = new DynamicParameters()
                };
                command.Parameters.Add("SettingType", settingType.GetEnumDescription(), DbType.String);
                command.Parameters.Add("Value", ConvertObjectToString(settingToSave), DbType.String);
                command.Parameters.Add("FromDate", fromDate, DbType.DateTime);
                command.Parameters.Add("ToDate", toDate, DbType.DateTime);
                command.Parameters.Add("CreatedBy", createdBy, DbType.String);
                command.Parameters.Add("ModifiedBy", createdBy, DbType.String);
                command.SqlCommand = "inf.SaveSetting";
                return Save(command);
            }
            catch (Exception ex)
            {
                Logger.ErrorException(ex.Message, ex);
                throw ex;
            }
        }

        private string ConvertObjectToString(object setting)
        {

            try
            {
                var settingString = JsonConvert.SerializeObject(setting);
                return settingString;

            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }


        public T GetCurrentSetting<T>(SettingType settingType, DateTime date = new DateTime())
        {
            try
            {
                var p = new DynamicParameters();
                p.Add("settingType", settingType.GetEnumDescription(), DbType.String);
                p.Add("Date", date, DbType.DateTime);

                var command = new CustomCommand
                {
                    Parameters = p,
                    SqlCommand = "inf.GetSettingBySettingType",
                    CommandType = CommandType.StoredProcedure
                };
                var baseSetting = Get(command, SettingRowMapper);

                var result = JsonConvert.DeserializeObject<T>(baseSetting.Value);
                return result;

            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public List<T> GetHistoricalSettings<T>(SettingType settingType, DateTime froDate, DateTime toDate)
        {
            try
            {

                var p = new DynamicParameters();
                p.Add("settingType", settingType.GetEnumDescription(), DbType.String);
                p.Add("fromDate", froDate, DbType.DateTime);
                p.Add("toDate", toDate, DbType.DateTime);

                var command = new CustomCommand
                {
                    Parameters = p,
                    SqlCommand = "inf.GetHistoricalSettings",
                    CommandType = CommandType.StoredProcedure
                };
                var baseSetting = GetAll(command, SettingRowMapper);

                var result = baseSetting.Select(x => JsonConvert.DeserializeObject<T>(x.Value)).ToList();
                return result;

            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public List<T> GetHistoricalSettings<T>(Expression<Func<BaseSetting, bool>> expression)
        {
            try
            {
                var res = Get(expression).ToList();
                var result = res.Select(x => JsonConvert.DeserializeObject<T>(x.Value)).ToList();
                return result;

            }
            catch (Exception e)
            {
                Logger.ErrorException(e.Message, e);
                throw;
            }
        }

        public T GetCurrentSettingByDate<T>(SettingType settingType, DateTime date) where T : class
        {
            var p = new DynamicParameters();
            p.Add("settingType", settingType.GetEnumDescription(), DbType.String);
            p.Add("Date", date, DbType.DateTime);

            var command = new CustomCommand
            {
                Parameters = p,
                SqlCommand = "inf.GetCurrentSettingByDate",
                CommandType = CommandType.StoredProcedure
            };
            var baseSetting = Get(command, SettingRowMapper);

            if (baseSetting != null)
            {
                var result = JsonConvert.DeserializeObject<T>(baseSetting.Value);
                return result;
            }
            else
            {
                var result = CreateInstanceHelper.Resolve<T>();
                return result;
            }
        }
    }
}