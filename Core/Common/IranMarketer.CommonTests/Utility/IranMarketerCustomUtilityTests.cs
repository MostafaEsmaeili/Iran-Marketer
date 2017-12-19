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
    
    public class IranMarketerCustomUtilityTests
    {
        [TestMethod()]
        public void IsValidEmailTest()
        {
            var res = "mostafa@gmail.com".IsValidEmail();
            Assert.AreEqual(true, res);
        }


    }
}