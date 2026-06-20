namespace DependencyInjectionExample
{
    public class CustomerRepositoryImpl : ICustomerRepository
    {
        public string FindCustomerById(int id)
        {
            return $"Customer Found with ID: {id}";
        }
    }
}