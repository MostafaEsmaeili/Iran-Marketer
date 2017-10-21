using Castle.MicroKernel.Registration;
using Castle.MicroKernel.SubSystems.Configuration;
using Castle.Windsor;
using Pikad.Framework.Infra.Helper;
using Pikad.Framework.Repository;
using Pikad.Framework.Repository.Mapper;

namespace Pikad.Framework.Infra.IoC
{
    public class RepositoriesInstaller : IWindsorInstaller
    {
        public void Install(IWindsorContainer container, IConfigurationStore store)
        {
            FromAssemblyDescriptor fromAssemblyInDirectory = Classes.FromAssemblyInDirectory(new AssemblyFilter(PathHelper.BinPath(), "*.Dao.dll"));
            container.Register(fromAssemblyInDirectory.BasedOn(typeof(IRepositoryBacic<>)).WithService.AllInterfaces());
            container.Register(fromAssemblyInDirectory.BasedOn(typeof(BaseMapper<>)).WithService.AllInterfaces().WithServiceBase().WithServiceSelf().LifestyleTransient());
            container.Register(fromAssemblyInDirectory.BasedOn(typeof(IResultSetMapper<>)).WithService.AllInterfaces().WithServiceBase().WithServiceSelf().LifestyleTransient());

        }
    }
}
