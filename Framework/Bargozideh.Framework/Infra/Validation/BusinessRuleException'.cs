namespace Bargozideh.Framework.Infra.Validation
{
    public class BusinessRuleException<T> : BusinessRuleException
    {
        public BusinessRuleException(string memberName, string errorMessage)
            : base(memberName, errorMessage)
        {
        }

        public BusinessRuleException(string memberName, string errorMessage, System.Exception innerException)
            : base(memberName, errorMessage, innerException)
        {
        }

        public T ExceptionObject { get; set; }
    }
}
