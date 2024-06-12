using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;


namespace UnitTestProject1
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void Authorization1()
        {
            string Password = "soiskatel";
            string Login = "soiskatel";
           
            Assert.AreEqual(Password, Login);
        }
        [TestMethod]
        public void Authorization2()
        {
            string Password = "";
            string Login = "";

            Assert.AreEqual(Password, Login);
        }
    }
}

  
