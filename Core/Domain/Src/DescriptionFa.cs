using System;
using System.ComponentModel;
using System.Linq;

namespace IranMarketer.Domain
{
    [AttributeUsage(AttributeTargets.All)]
    public class DescriptionFa : Attribute
    {
        public string Title { get; }

        public DescriptionFa(string title)
        {
            Title = title;
        }
    }

    public static class DescriptionFaExtension
    {
        private static TAttribute GetAttribute<TAttribute>(this System.Enum value)
            where TAttribute : Attribute
        {
            var type = value.GetType();
            var name = System.Enum.GetName(type, value);
            if (name == null)
                return null;
            return type.GetField(name).GetCustomAttributes(false).OfType<TAttribute>().SingleOrDefault();
        }

        public static string GetEnumDescriptionFa(this System.Enum value)
        {
            var description = GetAttribute<DescriptionFa>(value);
            return description?.Title;
        }
    }
}