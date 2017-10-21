using System;
using Castle.MicroKernel.Registration;
using Castle.Windsor;
using Pikad.Framework.Infra.Helper;
using Pikad.Framework.Infra.Service;
using Pikad.Framework.Repository;
using Pikad.Framework.Repository.IoC;
using Pikad.Framework.Repository.Mapper;
using Pikad.Framework.UnitOfWork;
using Sahra.MutualFund.Common;
using Sahra.MutualFund.Common.Database;
using Sahra.MutualFund.Common.Session;

namespace Sahra.MutualFund.Agent.MarkertData.Runner
{
    public class AgentStarter
    {
        public void Start()
        {
            try
            {
                CoreContainer.SetUp(new WindsorContainer());
                CoreContainer.Container.Register(Castle.MicroKernel.Registration.Component.For<IMutualFundDatabase>().ImplementedBy<MutualFundDatabase>());
                CoreContainer.Container.Register(Castle.MicroKernel.Registration.Component.For<ISession>().ImplementedBy<MutualFundSession>());
                FromAssemblyDescriptor fromAssemblyInDirectoryUserManagement = Classes.FromAssemblyInDirectory(new AssemblyFilter(PathHelper.BinPath(), "*.UserManagement.dll"));
                CoreContainer.Container.Register(fromAssemblyInDirectoryUserManagement.BasedOn(typeof(IService<,>)).WithService.DefaultInterfaces());
                CoreContainer.Container.Register(fromAssemblyInDirectoryUserManagement.BasedOn(typeof(IRepository<,>)).WithService.AllInterfaces());
                CoreContainer.Container.Register(fromAssemblyInDirectoryUserManagement.BasedOn(typeof(BaseMapper<>)).WithServiceBase().WithServiceSelf().LifestyleTransient());

                FromAssemblyDescriptor fromAssemblyInDirectoryApi = Classes.FromAssemblyInDirectory(new AssemblyFilter(PathHelper.BinPath(), "*.API.dll"));
                CoreContainer.Container.Register(fromAssemblyInDirectoryApi.BasedOn(typeof(BaseProvider)).WithService.AllInterfaces().WithServiceBase().WithServiceSelf().LifestyleTransient());

                FromAssemblyDescriptor fromAssemblyInDirectorySetting = Classes.FromAssemblyInDirectory(new AssemblyFilter(PathHelper.BinPath(), "*.Service.dll"));
                CoreContainer.Container.Register(fromAssemblyInDirectorySetting.BasedOn(typeof(BaseSettingService)).WithService.AllInterfaces().WithServiceBase().WithServiceSelf().LifestyleTransient());

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}
