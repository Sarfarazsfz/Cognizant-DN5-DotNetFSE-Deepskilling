using System;

namespace StrategyPatternExample
{
    internal class Program
    {
        static void Main(string[] args)
        {
            PaymentContext context =
                new PaymentContext(
                    new CreditCardPayment());

            context.ExecutePayment(5000);

            context.SetStrategy(
                new PayPalPayment());

            context.ExecutePayment(3000);

            Console.WriteLine(
                "\nPress Enter to Exit...");
            Console.ReadLine();
        }
    }
}