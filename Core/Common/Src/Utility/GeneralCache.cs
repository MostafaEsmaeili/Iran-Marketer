using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Caching;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Web;
using System.Web.Caching;
using CacheItemPriority = System.Web.Caching.CacheItemPriority;

namespace IranMarketer.Common.Utility
{
    public class GeneralCache
    {
        private const int HourFactor = 720;
        private static readonly ObjectCache _cache;
        public static readonly int DayFactor = 17280;
        public static readonly int MinuteFactor = 12;
        public static readonly double SecondFactor = 0.2;


        private static int Factor = 5;

        /// <summary>
        /// Static initializer should ensure we only have to look up the current cache
        /// instance once.
        /// </summary>
        static GeneralCache()
        {
            ObjectCache context = System.Runtime.Caching.MemoryCache.Default;
            _cache = context;
        }

        private GeneralCache()
        {
        }

        public static void ReSetFactor(int cacheFactor)
        {
            Factor = cacheFactor;
        }

        /// <summary>
        /// Removes all items from the Cache
        /// </summary>
        public static void Clear()
        {
            //IDictionaryEnumerator cacheEnum = _cache.GetEnumerator();
            //while (cacheEnum.MoveNext())
            //    _cache.Remove(cacheEnum.Key.ToString());
            System.Runtime.Caching.MemoryCache.Default.Dispose();
        }

        public static void RemoveByPattern(string pattern)
        {
            _cache.Remove(pattern);
            //IDictionaryEnumerator cacheEnum = _cache.re;
            //Regex regex = new Regex(pattern, RegexOptions.IgnoreCase | RegexOptions.Singleline | RegexOptions.Compiled);
            //while (cacheEnum.MoveNext())
            //{
            //    if (regex.IsMatch(cacheEnum.Key.ToString()))
            //        _cache.Remove(cacheEnum.Key.ToString());
            //}
        }

        /// <summary>
        /// Removes the specified key from the cache
        /// </summary>
        /// <param name="key"></param>
        public static void Remove(string key)
        {
            _cache.Remove(key);
        }

        /// <summary>
        /// Insert the current "obj" into the cache. 
        /// </summary>
        /// <param name="key"></param>
        /// <param name="obj"></param>
        public static void Add(string key, object obj)
        {
            _cache.Add(key, obj,
                new CacheItemPolicy
                {
                    Priority = System.Runtime.Caching.CacheItemPriority.Default,
                    AbsoluteExpiration = DateTimeOffset.Now.AddMinutes(60)
                });
        }

        public static object Get(string key)
        {
            return _cache.Get(key);
        }

        public static int SecondFactorCalculate(int cacheTime)
        {
            return Convert.ToInt32(Math.Round((cacheTime * SecondFactor)));
        }
    }
}
