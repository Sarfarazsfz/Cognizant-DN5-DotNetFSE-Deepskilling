using CustomerCommLib;
using Moq;
using NUnit.Framework;


namespace CustomerComm.Tests;

[TestFixture]
public class CustomerCommTests
{
    [Test]
    public void SendMailToCustomer_ReturnsTrue()
    {
        var mockMailSender = new Mock<IMailSender>();

        mockMailSender
            .Setup(x => x.SendMail(
                It.IsAny<string>(),
                It.IsAny<string>()))
            .Returns(true);

        var customerComm =
            new CustomerCommLib.CustomerComm(mockMailSender.Object);

        bool result =
            customerComm.SendMailToCustomer();

        Assert.That(result, Is.True);
    }
}