using System;
using System.Linq;
using Castle.Core.Internal;
using Castle.MicroKernel.Registration;
using Castle.Windsor;
//using Castle.Facilities.AutoTx;

namespace Bargozideh.Framework.Infra.IoC
{
    public class CoreContainer
    {
        public static IWindsorContainer Container;
        public static bool Initialized;
        private static void PreventReInitialize()
        {
            if (Initialized) throw new System.Exception("CoreContainer was initialized!");
        }


        public static void SetUp(WindsorContainer container)
        {
            try
            {
                PreventReInitialize();
                Initialized = true;

                Container = container;
                Container.Install(new CastleWindsorInstaller())
                    //.Register(Component.For<Repository.DataContext.DataContext>().ImplementedBy(context).LifeStyle.Singleton)
                        .Register(Classes.FromThisAssembly()
                        .Where(t => t.GetInterfaces().Any(x => x != typeof(IDisposable))
                                    && !t.HasAttribute<NoIoCFluentRegistration>())
                        .Unless(t => t.IsAbstract)
                        .Configure(c =>
                        {
                            c.IsFallback();
                        })
                        .LifestyleTransient()
                        .WithServiceAllInterfaces());
                //.AddFacility<AutoTxFacility>();

                Container.Install(new RepositoriesInstaller(), new ServicesInstaller());

            }
            catch (System.Exception ex)
            {
                throw ex;
            }

        }
    }
}
