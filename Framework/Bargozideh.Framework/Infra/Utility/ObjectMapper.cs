using AutoMapper;

namespace Bargozideh.Framework.Infra.Utility
{
    public class ObjectMapper
    {
        public class BaseConverter
        {
            public static TDest ConvertSourceToDest<TSource, TDest>(TSource source)
            {
                var dest = Mapper.Map<TSource, TDest>(source, x => x.CreateMissingTypeMaps = true);
                return dest;
            }
        

        }
    }
}
