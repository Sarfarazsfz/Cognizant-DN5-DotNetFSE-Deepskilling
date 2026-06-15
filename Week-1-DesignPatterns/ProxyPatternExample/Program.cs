using System;

namespace ProxyPatternExample
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Image image = new ProxyImage("nature.jpg");

            Console.WriteLine("First Display:");
            image.Display();

            Console.WriteLine();

            Console.WriteLine("Second Display:");
            image.Display();

            Console.WriteLine("\nPress Enter to Exit...");
            Console.ReadLine();
        }
    }
}