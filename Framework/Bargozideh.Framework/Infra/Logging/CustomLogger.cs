using NLog;

namespace Bargozideh.Framework.Infra.Logging
{
    public class CustomLogger 
    {
        private Logger _logger;

        public CustomLogger(string name)
        {
            _logger = LogManager.GetLogger(name);
        }

        public void ErrorException(string message,System.Exception exception)
        {
            LogEventInfo logEvent = new LogEventInfo(LogLevel.Error, _logger.Name, message)
                                    {
                                        Exception = exception
                                    };
            _logger.Log(typeof(CustomLogger), logEvent);
        }

        public void Error(string message)
        {
            LogEventInfo logEvent = new LogEventInfo(LogLevel.Error, _logger.Name, message)
            {
                Exception = new System.Exception(message)
            };
            _logger.Log(typeof(CustomLogger), logEvent);
        }

    }

   
}