using System;

namespace AdapterPatternExample
{
    public class PaypalGateway
    {
        public void SendPayment(double amount)
        {
            Console.WriteLine($"Paypal Payment of Rs.{amount} processed");
        }
    }
}