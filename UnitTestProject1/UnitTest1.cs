using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;

namespace UnitTestProject1
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestLoginRight()
        {
            string Password = "123";
            string Login = "Manager";
           
            Assert.AreEqual(Password, Login);
        }
        [TestMethod]
        public void TestLoginWrong()
        {
            string Password = "";
            string Login = "";

            Assert.AreEqual(Password, Login);
        }
    }
}

  
