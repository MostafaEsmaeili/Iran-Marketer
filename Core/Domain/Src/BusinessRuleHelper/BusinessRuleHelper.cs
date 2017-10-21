using System;
using Pikad.Framework.Infra.Validation;

namespace IranMarketer.Domain.BusinessRuleHelper
{
    public static class BusinessRuleHelper
    {
        public static int GetExceptionCode(Exception exception)
        {
            return exception.GetType() == typeof(BusinessRuleException) ? ((BusinessRuleException)exception).Code : 1;
        }

        public static string GetException(Exception exception)
        {
            return exception.GetType() == typeof(BusinessRuleException) ? ((BusinessRuleException)exception).ErrorMessage : "عملیات با شکست مواجه گردید";
        }
    }
}