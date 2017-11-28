using System;

namespace Bargozideh.Framework.Repository.Exceptions
{
    public class NoPkException : Exception
    {
        public NoPkException()
        {
        }

        public NoPkException(string message)
            : base(message)
        {
        }

        public NoPkException(string message, Exception inner)
            : base(message, inner)
        {
        }
    }
}