namespace AdapterPatternExample
{
    public class PaytmAdapter : PaymentProcessor
    {
        private readonly PaytmGateway paytmGateway;

        public PaytmAdapter()
        {
            paytmGateway = new PaytmGateway();
        }

        public void ProcessPayment(double amount)
        {
            paytmGateway.MakePayment(amount);
        }
    }
}