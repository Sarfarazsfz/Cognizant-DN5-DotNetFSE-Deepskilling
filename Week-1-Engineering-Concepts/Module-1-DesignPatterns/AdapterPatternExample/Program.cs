using System;

namespace AdapterPatternExample
{
    internal class Program
    {
        static void Main(string[] args)
        {
            PaymentProcessor paytm =
                new PaytmAdapter();

            paytm.ProcessPayment(1000);

            PaymentProcessor paypal =
                new PaypalAdapter();

            paypal.ProcessPayment(2500);
        }
    }
}