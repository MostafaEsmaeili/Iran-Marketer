using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using IranMarketer.Common.Utility;
using IranMarketer.Domain.DTO;
using Pikad.Framework.Infra.Utility;
using Pikad.Framework.Repository;
using Pikad.Framework.UnitOfWork;

namespace IranMarketer.App.Helper
{
    public static class Extentions
    {
        public static string GetUserName(this IIdentity identity)
        {
            var claim = ((ClaimsIdentity) identity).Name;
            // Test for null to avoid issues during local testing
            return claim;
        }
        public static string GetEmail(this IIdentity identity)
        {
            var claim = ((ClaimsIdentity)identity).FindFirst(ClaimTypes.Email);
            // Test for null to avoid issues during local testing
            return claim?.Value;
        }
        public static string GetPartyId(this IIdentity identity)
        {
            var claim = ((ClaimsIdentity)identity).FindFirst(ClaimTypes.UserData);
            // Test for null to avoid issues during local testing
            return claim?.Value;
        }

        public static T SetUserInfo<T>(this IIdentity identity, T o) where T : class
        {
            if (typeof(T).InheritsOrImplements(typeof(IEntity<>)))
            {
                ((dynamic) o).CreatedBy = ((ClaimsIdentity) identity).Name;
                ((dynamic)o).ModifiedBy = ((ClaimsIdentity)identity).Name;

            }
            if (typeof(T).InheritsOrImplements(typeof(BaseDto<>)))
            {

                // public long PartyId { get; set; }
                ((dynamic) o).UserName = ((ClaimsIdentity) identity).Name;
                ((dynamic) o).PartyId = ((ClaimsIdentity) identity).FindFirst(ClaimTypes.UserData).Value.SafeInt();

            }
            return o;
        }
        public static bool InheritsOrImplements(this Type child, Type parent)
        {
            parent = ResolveGenericTypeDefinition(parent);

            var currentChild = child.IsGenericType
                ? child.GetGenericTypeDefinition()
                : child;

            while (currentChild != typeof(object))
            {
                if (parent == currentChild || HasAnyInterfaces(parent, currentChild))
                    return true;

                currentChild = currentChild.BaseType != null
                               && currentChild.BaseType.IsGenericType
                    ? currentChild.BaseType.GetGenericTypeDefinition()
                    : currentChild.BaseType;

                if (currentChild == null)
                    return false;
            }
            return false;
        }


        private static bool HasAnyInterfaces(Type parent, Type child)
        {
            return child.GetInterfaces()
                .Any(childInterface =>
                {
                    var currentInterface = childInterface.IsGenericType
                        ? childInterface.GetGenericTypeDefinition()
                        : childInterface;

                    return currentInterface == parent;
                });
        }

        private static Type ResolveGenericTypeDefinition(Type parent)
        {
            var shouldUseGenericType = true;
            if (parent.IsGenericType && parent.GetGenericTypeDefinition() != parent)
                shouldUseGenericType = false;

            if (parent.IsGenericType && shouldUseGenericType)
                parent = parent.GetGenericTypeDefinition();
            return parent;
        }
    }
}