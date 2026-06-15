using System;

namespace StrategyPatternExample
{
    public class PayPalPayment : PaymentStrategy
    {
        public void Pay(double amount)
        {
            Console.WriteLine(
                $"Paid Rs.{amount} using PayPal");
        }
    }
}