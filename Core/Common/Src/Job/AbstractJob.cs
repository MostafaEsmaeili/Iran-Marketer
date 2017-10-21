using Pikad.Framework.Infra.Logging;
using Quartz;


namespace IranMarketer.Common
{
    public abstract class AbstractJob : QuartzJobAgent, IMutualFundJob
    {
        public static IranMarketerAgentSetting IranMarketerAgentSetting { get; set; }
        public AbstractJob()
        {
            IranMarketerAgentSetting = IranMarketerAgentSetting.Insance;
        }

        #region Logger
        public CustomLogger Logger => new CustomLogger(this.GetType().FullName);
        #endregion

        public override void Execute(IJobExecutionContext context)
        {
            ExecuteAgent();
        }

    }
}
