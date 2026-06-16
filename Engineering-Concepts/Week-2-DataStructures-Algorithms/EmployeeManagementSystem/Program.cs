using EmployeeManagementSystem;

class Program
{
    static Employee[] employees = new Employee[100];

    static int count = 0;

    static void Main(string[] args)
    {
        AddEmployee(
            new Employee(
                101,
                "Sarfaraz",
                "Developer",
                50000));

        AddEmployee(
            new Employee(
                102,
                "Aman",
                "Tester",
                40000));

        AddEmployee(
            new Employee(
                103,
                "Rahul",
                "Manager",
                80000));

        Console.WriteLine("All Employees:");

        TraverseEmployees();

        Console.WriteLine();

        Console.WriteLine("Searching Employee 102");

        Employee emp = SearchEmployee(102);

        if (emp != null)
        {
            Console.WriteLine(
                $"{emp.EmployeeId} " +
                $"{emp.Name} " +
                $"{emp.Position}");
        }

        Console.WriteLine();

        DeleteEmployee(102);

        Console.WriteLine();

        Console.WriteLine("Employees After Deletion:");

        TraverseEmployees();
    }

    static void AddEmployee(Employee employee)
    {
        employees[count] = employee;
        count++;
    }

    static Employee SearchEmployee(int employeeId)
    {
        for (int i = 0; i < count; i++)
        {
            if (employees[i].EmployeeId == employeeId)
            {
                return employees[i];
            }
        }

        return null;
    }

    static void TraverseEmployees()
    {
        for (int i = 0; i < count; i++)
        {
            Console.WriteLine(
                $"{employees[i].EmployeeId} | " +
                $"{employees[i].Name} | " +
                $"{employees[i].Position} | " +
                $"{employees[i].Salary}");
        }
    }

    static void DeleteEmployee(int employeeId)
    {
        int index = -1;

        for (int i = 0; i < count; i++)
        {
            if (employees[i].EmployeeId == employeeId)
            {
                index = i;
                break;
            }
        }

        if (index == -1)
        {
            Console.WriteLine("Employee Not Found");
            return;
        }

        for (int i = index; i < count - 1; i++)
        {
            employees[i] = employees[i + 1];
        }

        count--;

        Console.WriteLine(
            $"Employee {employeeId} Deleted");
    }
}