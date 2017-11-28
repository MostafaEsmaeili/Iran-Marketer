using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using Bargozideh.Framework.Infra.IoC;
using Bargozideh.Framework.UnitOfWork;

namespace Bargozideh.Framework.Repository
{
    public abstract class RepositoryBase : IRepositoryBase
    {
        public ISession Session => CoreContainer.Container.Resolve<ISession>();


        //public DataContext.DataContext _DataContext => CoreContainer.Container.Resolve<DataContext.DataContext>();

        public IDbFactory Factory
        {
            get { return CoreContainer.Container.Resolve<IDbFactory>(); }
            set { }
        }

        protected RepositoryBase(IDbFactory factory)
        {
            Factory = factory;
        }
        protected static LinqToSqlResult GetDynamicQuery<T>(Expression<Func<T, bool>> expression)
        {
            var headSql = "SELECT * FROM";
            return GetDynamicSql(expression, headSql);

        }
        private static string GetTableName(Type type)
        {
            string name = "";
            string schema = "";

            //NOTE: This as dynamic trick should be able to handle both our own Table-attribute as well as the one in EntityFramework 
            var tableattr = type.GetCustomAttributes(false).SingleOrDefault(attr => attr.GetType().Name == "TableAttribute") as
                dynamic;
            if (tableattr != null)
            {
                name = tableattr.Name;
                schema = tableattr.Schema;
            }

            return schema + "." + name;
        }
        private static LinqToSqlResult GetDynamicSql<T>(Expression<Func<T, bool>> expression, string headSql)
        {
            var tableName = GetTableName(typeof(T));
            var queryProperties = new List<QueryParameter>();
            var body = (BinaryExpression)expression.Body;
            IDictionary<string, Object> expando = new ExpandoObject();
            var builder = new StringBuilder();

            // walk the tree and build up a list of query parameter objects
            // from the left and right branches of the expression tree
            WalkTree(body, ExpressionType.Default, ref queryProperties);

            // convert the query parms into a SQL string and dynamic property object
            builder.Append(headSql + " ");
            builder.Append(tableName);
            builder.Append(" WHERE ");

            for (int i = 0; i < queryProperties.Count(); i++)
            {
                QueryParameter item = queryProperties[i];

                if (!string.IsNullOrEmpty(item.LinkingOperator) && i > 0)
                {
                    builder.Append(string.Format("{0} {1} {2} @{1} ", item.LinkingOperator, item.PropertyName,
                        item.QueryOperator));
                }
                else
                {
                    builder.Append(string.Format("{0} {1} @{0} ", item.PropertyName, item.QueryOperator));
                }

                expando[item.PropertyName] = item.PropertyValue;
            }

            return new LinqToSqlResult(builder.ToString().TrimEnd(), expando);
        }
        private static void WalkTree(BinaryExpression body, ExpressionType linkingType,
            ref List<QueryParameter> queryProperties)
        {
            if (body.NodeType != ExpressionType.AndAlso && body.NodeType != ExpressionType.OrElse)
            {
                string propertyName = GetPropertyName(body);
                dynamic propertyValue = body.Right;
                string opr = GetOperator(body.NodeType);
                string link = GetOperator(linkingType);

                queryProperties.Add(new QueryParameter(link, propertyName, GetValue(propertyValue), opr));
            }
            else
            {
                WalkTree((BinaryExpression)body.Left, body.NodeType, ref queryProperties);
                WalkTree((BinaryExpression)body.Right, body.NodeType, ref queryProperties);
            }
        }
        private static object GetValue(dynamic propertyValue)
        {
            if (propertyValue.NodeType != System.Linq.Expressions.ExpressionType.Constant)
            {
                MemberExpression member = (MemberExpression)propertyValue;
                var objectMember = Expression.Convert(member, typeof(object));

                var getterLambda = Expression.Lambda<Func<object>>(objectMember);

                var getter = getterLambda.Compile();

                return getter();
            }
            return propertyValue.Value;
        }
        private static string GetOperator(ExpressionType type)
        {
            switch (type)
            {
                case ExpressionType.Equal:
                    return "=";
                case ExpressionType.NotEqual:
                    return "!=";
                case ExpressionType.LessThan:
                    return "<";
                case ExpressionType.GreaterThan:
                    return ">";
                case ExpressionType.AndAlso:
                case ExpressionType.And:
                    return "AND";
                case ExpressionType.Or:
                case ExpressionType.OrElse:
                    return "OR";
                case ExpressionType.Default:
                    return string.Empty;
                default:
                    throw new NotImplementedException();
            }
        }
        private static string GetPropertyName(BinaryExpression body)
        {
            string propertyName = body.Left.ToString().Split(new char[] { '.' })[1];

            if (body.Left.NodeType == ExpressionType.Convert)
            {
                // hack to remove the trailing ) when convering.
                propertyName = propertyName.Replace(")", string.Empty);
            }

            return propertyName;
        }

        //public void Dispose()
        //{
        //    if (_DataContext != null)
        //        _DataContext.Dispose();
        //}
    }
    internal class QueryParameter
    {
        public string LinkingOperator { get; set; }
        public string PropertyName { get; set; }
        public object PropertyValue { get; set; }
        public string QueryOperator { get; set; }

        /// <summary>
        /// Initializes a new instance of the <see cref="QueryParameter" /> class.
        /// </summary>
        /// <param name="linkingOperator">The linking operator.</param>
        /// <param name="propertyName">Name of the property.</param>
        /// <param name="propertyValue">The property value.</param>
        /// <param name="queryOperator">The query operator.</param>
        internal QueryParameter(string linkingOperator, string propertyName, object propertyValue, string queryOperator)
        {
            this.LinkingOperator = linkingOperator;
            this.PropertyName = propertyName;
            this.PropertyValue = propertyValue;
            this.QueryOperator = queryOperator;
        }
    }

    public class LinqToSqlResult
    {
        /// <summary>
        /// The _result
        /// </summary>
        private readonly Tuple<string, dynamic> _result;

        /// <summary>
        /// Gets the SQL.
        /// </summary>
        /// <value>
        /// The SQL.
        /// </value>
        public string Sql
        {
            get
            {
                return _result.Item1;
            }
        }

        /// <summary>
        /// Gets the param.
        /// </summary>
        /// <value>
        /// The param.
        /// </value>
        public dynamic Param
        {
            get
            {
                return _result.Item2;
            }
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="QueryResult" /> class.
        /// </summary>
        /// <param name="sql">The SQL.</param>
        /// <param name="param">The param.</param>
        public LinqToSqlResult(string sql, dynamic param)
        {
            _result = new Tuple<string, dynamic>(sql, param);
        }
    }
}
