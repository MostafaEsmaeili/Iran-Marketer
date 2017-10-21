using System.Collections.Generic;
using System.Runtime.Serialization;

namespace IranMarketer.Domain
{
    public class BaseServiceResponse
    {
        public ResponseStatus ResponseStatus { get; set; }

    }
    [DataContract]
    public class ResponseStatus 
    {
        public int StatusCode { get; set; }

        public string HttpStatus { get; set; }

        [DataMember(Order = 1)]
        public string ErrorCode { get; set; }

        [DataMember(Order = 2)]
        public string Message { get; set; }

        [DataMember(Order = 3)]
        public string StackTrace { get; set; }

        [DataMember(Order = 4)]
        public List<ResponseError> Errors { get; set; }

        [DataMember(Order = 5)]
        public Dictionary<string, string> Meta { get; set; }

        public ResponseStatus()
        {
        }

        public ResponseStatus(string errorCode)
        {
            this.ErrorCode = errorCode;
        }

        public ResponseStatus(string errorCode, string message)
            : this(errorCode)
        {
            this.Message = message;
        }
    }
    [DataContract]
    public class ResponseError 
    {
        [DataMember(EmitDefaultValue = false, IsRequired = false, Order = 1)]
        public string ErrorCode { get; set; }

        [DataMember(EmitDefaultValue = false, IsRequired = false, Order = 2)]
        public string FieldName { get; set; }

        [DataMember(EmitDefaultValue = false, IsRequired = false, Order = 3)]
        public string Message { get; set; }

        [DataMember(EmitDefaultValue = false, IsRequired = false, Order = 4)]
        public Dictionary<string, string> Meta { get; set; }
    }
}