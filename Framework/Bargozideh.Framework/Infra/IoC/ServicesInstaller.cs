﻿using Bargozideh.Framework.Infra.Helpers;
using Bargozideh.Framework.Infra.Service;
using Castle.MicroKernel.Registration;
using Castle.MicroKernel.SubSystems.Configuration;
using Castle.Windsor;

namespace Bargozideh.Framework.Infra.IoC
{
    public class ServicesInstaller : IWindsorInstaller
    {
        public void Install(IWindsorContainer container, IConfigurationStore store)
        {
            FromAssemblyDescriptor fromAssemblyInDirectory = Classes.FromAssemblyInDirectory(new AssemblyFilter(PathHelper.BinPath(), "*.Service.dll"));
            container.Register(fromAssemblyInDirectory.BasedOn(typeof(IService<,>)).WithService.DefaultInterfaces());
        }
    }
}
