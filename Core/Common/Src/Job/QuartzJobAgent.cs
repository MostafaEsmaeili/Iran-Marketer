using Quartz;

namespace IranMarketer.Common
{
    public abstract class QuartzJobAgent : IJob
    {
        public abstract void Execute(IJobExecutionContext context);

        public abstract void ExecuteAgent();

    }
}
