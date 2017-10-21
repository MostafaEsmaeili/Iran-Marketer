using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using Castle.Facilities.TypedFactory;
using Castle.MicroKernel;
using Castle.MicroKernel.Registration;
using Castle.MicroKernel.SubSystems.Configuration;
using Castle.Windsor;
using Pikad.UnitOfWork;

namespace FremaworkTest
{
    public class CastleWindsorInstaller : IWindsorInstaller
    {
        public void Install(IWindsorContainer container, IConfigurationStore store)
        {
            if (FacilityHelper.DoesKernelNotAlreadyContainFacility<TypedFactoryFacility>(container))
            {
                container.Kernel.AddFacility<TypedFactoryFacility>();
            }
            container.Register(Component.For<IUnitOfWork>().ImplementedBy<UnitOfWork>().IsFallback().LifestyleTransient());
            container.Register(Component.For<DbFactoryComponentSelector, ITypedFactoryComponentSelector>());
            container.Register(Component.For<IDbFactory>().AsFactory(c => c.SelectedWith<DbFactoryComponentSelector>()));
        }

        sealed class DbFactoryComponentSelector : DefaultTypedFactoryComponentSelector
        {
            private readonly IKernelInternal _kernel;

            public DbFactoryComponentSelector(IKernelInternal kernel)
            {
                _kernel = kernel;
            }
            protected override IDictionary GetArguments(MethodInfo method, object[] arguments)
            {
                var generics = method.GetGenericArguments();
                if (generics.Length != 2 || generics.First() != typeof(IUnitOfWork) || !method.Name.Equals("create", StringComparison.InvariantCultureIgnoreCase))
                {
                    return base.GetArguments(method, arguments);
                }
                var uow = new Arguments
                {
                    {"session", _kernel.Resolve(generics.Last())},
                    {"isolationLevel", arguments[0]},
                    {"sessionOnlyForThisUnitOfWork", true}
                };
                return uow;
            }
        }
    }
}
