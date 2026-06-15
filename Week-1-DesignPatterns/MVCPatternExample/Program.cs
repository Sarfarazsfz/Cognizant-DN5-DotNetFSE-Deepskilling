using System;

namespace MVCPatternExample
{
    class Program
    {
        static void Main(string[] args)
        {
            Student student = new Student
            {
                Name = "Sarfaraz",
                Id = "231FA04237",
                Grade = "A"
            };

            StudentView view = new StudentView();

            StudentController controller =
                new StudentController(student, view);

            Console.WriteLine("Initial Details");
            controller.UpdateView();

            Console.WriteLine();

            controller.SetStudentName("Md Sarfaraz Alam");
            controller.SetStudentGrade("A+");

            Console.WriteLine("Updated Details");
            controller.UpdateView();
        }
    }
}