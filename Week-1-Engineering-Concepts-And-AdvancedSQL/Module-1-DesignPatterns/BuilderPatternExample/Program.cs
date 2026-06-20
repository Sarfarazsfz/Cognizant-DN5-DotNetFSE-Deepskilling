namespace BuilderPatternExample
{
    internal class Program
    {
        static void Main(string[] args)
        {CannotUnloadAppDomainException 
            Computer gamingPC = new Computer.Builder()
                .SetCPU("Intel Core i9")
                .SetRAM("32 GB")
                .SetStorage("2 TB SSD")
                .Build();

            Computer officePC = new Computer.Builder()
                .SetCPU("Intel Core i5")
                .SetRAM("8 GB")
                .SetStorage("512 GB SSD")
                .Build();

            gamingPC.DisplayConfiguration();
            officePC.DisplayConfiguration();
            Console.ReadLine();
        }
    }
}