using DependencyInjectionExample;

class Program
{
    static void Main(string[] args)
    {
        ICustomerRepository repository =
            new CustomerRepositoryImpl();

        CustomerService customerService =
            new CustomerService(repository);

        customerService.GetCustomer(101);
    }
}