using Castle.MicroKernel.Registration;
using Castle.Windsor;
using Pikad.Framework.Infra.IoC;
using Pikad.Framework.Repository.DataContext;
using Pikad.Framework.Repository.IoC;
using Pikad.Framework.UnitOfWork;

namespace FremaworkTest
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



            TestClass2 class2 = new TestClass2();

            //TestClass.Test();
            class2.GetTest();


        }
    }
}
