using System;

namespace ObserverPatternExample
{
    internal class Program
    {
        static void Main(string[] args)
        {
            StockMarket stockMarket =
                new StockMarket("TCS");

            MobileApp mobileApp =
                new MobileApp();

            WebApp webApp =
                new WebApp();

            stockMarket.RegisterObserver(mobileApp);
            stockMarket.RegisterObserver(webApp);

            Console.WriteLine("Price Changed:");

            stockMarket.SetPrice(4200);

            Console.WriteLine();

            stockMarket.SetPrice(4350);

            Console.WriteLine("\nPress Enter to Exit...");
            Console.ReadLine();
        }
    }
}