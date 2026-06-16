namespace DecoratorPatternExample
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Notifier notifier =
                new SlackNotifierDecorator(
                    new SMSNotifierDecorator(
                        new EmailNotifier()));

            notifier.Send("Your order has been shipped!");

            Console.WriteLine("\nPress Enter to Exit...");
            Console.ReadLine();
        }
    }
}