using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Castle.MicroKernel.Registration;
using Castle.Windsor;
using FremaworkTest;
using Pikad.Framework.Repository.DataContext;
using Pikad.Framework.Repository.IoC;
using Pikad.Framework.UnitOfWork;
using Sahra.MutualFund.Test.TestClasses;

namespace Sahra.MutualFund.Test
{
    class Program
    {
        static void Main(string[] args)
        {
            CoreContainer.SetUp(new WindsorContainer());
            //CoreContainer.Container.Register(Component.For<INewRepository>().ImplementedBy<NewRepository>());
            //CoreContainer.Container.Register(Component.For<IWorldRepository>().ImplementedBy<WorldRepository>());
            //CoreContainer.Container.Register(Component.For<ITestSession>().ImplementedBy<TestSession>());
            CoreContainer.Container.Register(Component.For<IMyDatabaseSettings>().ImplementedBy<MyDatabaseSettings>());
            CoreContainer.Container.Register(Component.For<ISession>().ImplementedBy<TestSession>());

            SharedDataTest  sharedDataTest = new SharedDataTest();
            var x = sharedDataTest.GetSectors();
            int a = 0;
        }
    }
}
