namespace AuthorizationTesting_Rightlogin;

[TestClass]
public class UnitTest1
{
    [TestMethod]
    public void TestLoginRight()
    {
        string Password = "123";
        string Login = "manager";
        assert.AreEqual(Password, Login);
    }
    [TestMethod]
    public void TestLoginWrong()
    {
        string Password = "";
        string Login = "";
        assert.AreEqual(Password, Login);
    }
}