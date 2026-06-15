using System;

namespace AdapterPatternExample
{
    public class PaytmGateway
    {
        public void MakePayment(double amount)
        {
            Console.WriteLine($"Paytm Payment of Rs.{amount} processed");
        }
    }
}