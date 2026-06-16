namespace AdapterPatternExample
{
    public class PaypalAdapter : PaymentProcessor
    {
        private readonly PaypalGateway paypalGateway;

        public PaypalAdapter()
        {
            paypalGateway = new PaypalGateway();
        }

        public void ProcessPayment(double amount)
        {
            paypalGateway.SendPayment(amount);
        }
    }
}