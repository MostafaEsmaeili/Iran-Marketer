using System;
using System.ComponentModel;
using Castle.MicroKernel.Registration;
using Castle.Windsor;
using Pikad.Framework.Infra.Helper;
using Pikad.Framework.Infra.Service;
using Pikad.Framework.Repository;
using Pikad.Framework.Repository.IoC;
using Pikad.Framework.Repository.Mapper;
using Pikad.Framework.UnitOfWork;
using IranMarketer.Common;
using IranMarketer.Common.Database;
using IranMarketer.Common.Session;
using Pikad.Framework.Infra.Provider;
using Component = Castle.MicroKernel.Registration.Component;


namespace IranMarketer.WebAPI

{
    public class Bootstrapper
    {
        public void Init()
        {
            try
            {
                CoreContainer.SetUp(new WindsorContainer());
                CoreContainer.Container.Register(Component.For<IIranMarketerDatabase>().ImplementedBy<IranMarketerDatabase>());
                CoreContainer.Container.Register(Component.For<ISession>().ImplementedBy<IranMarketerSession>());
                FromAssemblyDescriptor fromAssemblyInDirectoryUserManagement = Classes.FromAssemblyInDirectory(new AssemblyFilter(PathHelper.BinPath(), "*.UserManagement.dll"));
                CoreContainer.Container.Register(fromAssemblyInDirectoryUserManagement.BasedOn(typeof(IService<,>)).WithService.DefaultInterfaces());
                CoreContainer.Container.Register(fromAssemblyInDirectoryUserManagement.BasedOn(typeof(IRepository<,>)).WithService.AllInterfaces());
                CoreContainer.Container.Register(fromAssemblyInDirectoryUserManagement.BasedOn(typeof(BaseMapper<>)).WithServiceBase().WithServiceSelf().LifestyleTransient());

                FromAssemblyDescriptor fromAssemblyInDirectoryApi = Classes.FromAssemblyInDirectory(new AssemblyFilter(PathHelper.BinPath(), "*.API.dll"));
                CoreContainer.Container.Register(fromAssemblyInDirectoryApi.BasedOn(typeof(AbstractProvider<,,>)).WithService.AllInterfaces().WithServiceBase().WithServiceSelf().LifestyleTransient());


                FromAssemblyDescriptor fromAssemblyInDirectoryApiBasic = Classes.FromAssemblyInDirectory(new AssemblyFilter(PathHelper.BinPath(), "*.API.dll"));
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