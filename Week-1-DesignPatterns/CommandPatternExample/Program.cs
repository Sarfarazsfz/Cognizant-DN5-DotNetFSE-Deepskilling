using System;

namespace CommandPatternExample
{
    class Program
    {
        static void Main(string[] args)
        {
            Light light = new Light();

            ICommand lightOnCommand = new LightOnCommand(light);
            ICommand lightOffCommand = new LightOffCommand(light);

            RemoteControl remote = new RemoteControl();

            Console.WriteLine("Turning Light ON:");
            remote.SetCommand(lightOnCommand);
            remote.PressButton();

            Console.WriteLine();

            Console.WriteLine("Turning Light OFF:");
            remote.SetCommand(lightOffCommand);
            remote.PressButton();
        }
    }
}