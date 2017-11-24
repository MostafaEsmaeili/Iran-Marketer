using System.Collections.Generic;
using System.Data;

namespace Bargozideh.Framework.Repository.Mapper
{
    public interface IResultSetMapper<TResult>
    {
        /// <summary>
        /// When implemented by a class, returns an enumerable of <typeparamref name="TResult"/> based on <paramref name="reader"/>.
        /// 
        /// </summary>
        /// <param name="reader">The <see cref="T:System.Data.IDataReader"/> to map.</param>
        /// <returns>
        /// The enurable of <typeparamref name="TResult"/> that is based on <paramref name="reader"/>.
        /// </returns>
        IEnumerable<TResult> MapSet(IDataReader reader);
    }
}
