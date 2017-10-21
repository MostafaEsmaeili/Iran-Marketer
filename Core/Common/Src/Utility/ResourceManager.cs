using System;
using System.Collections;
using System.IO;
using System.Reflection;
using System.Web.Caching;
using System.Xml;
using Pikad.Framework.Infra.Utility;

namespace IranMarketer.Common.Utility
{
    public class ResourceManager
    {

        public static string GetString(string key, ResourceType resourceType)
        {
            Hashtable resources = GetResource(resourceType);
            if (resources[key] == null)
            {
                return null;
            }
            return resources[key].SafeString();
        }


        private static Hashtable GetResource(ResourceType resourceType)
        {
            //string defaultLanguage = Globals.Language;
            string cacheKey = resourceType.ToString();
            //
            Hashtable resources = CustomCache.Get(cacheKey) as Hashtable;
            if (resources == null)
            {
                resources = new Hashtable();
                resources = LoadResource(resourceType, resources, cacheKey);
            }
            return resources;
        }

        private static Hashtable LoadResource(ResourceType resourceType, Hashtable target,
            string cacheKey)
        {
            string filePath;

            //filePath = Directory.GetCurrentDirectory() + Path.DirectorySeparatorChar + "Resources.xml";
            filePath = AppDomain.CurrentDomain.BaseDirectory + "Resources\\";
            // filePath2 = Directory.GetCurrentDirectory() + Path.DirectorySeparatorChar + "Resources.xml";

            filePath = filePath + resourceType.SafeString() + ".xml";
            CacheDependency dp = new CacheDependency(filePath);

            XmlDocument d = new XmlDocument();
            try
            {
                d.Load(filePath);
            }
            catch
            {
                return target;
            }

            foreach (XmlNode n in d.SelectSingleNode("root").ChildNodes)
            {
                if (n.NodeType != XmlNodeType.Comment)
                {
                    target[n.Attributes["name"].Value] = n.InnerText;
                }
            }
            CustomCache.Max(cacheKey, target, dp);
            return target;
        }
    }

    public enum ResourceType
    {
        VoucherMasterResource = 1,
        VoucherDetailResource = 2
    }
}