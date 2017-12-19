using Microsoft.VisualStudio.TestTools.UnitTesting;
using IranMarketer.Common.Utility;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IranMarketer.Common.Utility.Tests
{
    [TestClass()]
    public class UnitTest1
    {
        [TestMethod()]
        public void IsValidEmailTest()
        {
            Assert.IsTrue("a.a@a.com".IsValidEmail());
        }
    }
}