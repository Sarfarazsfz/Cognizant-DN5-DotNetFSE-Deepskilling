using OrderSortingSystem;

class Program
{
    static void Main(string[] args)
    {
        Order[] orders =
        {
            new Order(101,"Sarfaraz",4500),
            new Order(102,"Aman",1200),
            new Order(103,"Rahul",7800),
            new Order(104,"Priya",3000),
            new Order(105,"Neha",6000)
        };

        Console.WriteLine("Bubble Sort:");

        Order[] bubbleOrders = (Order[])orders.Clone();

        BubbleSort(bubbleOrders);

        DisplayOrders(bubbleOrders);

        Console.WriteLine();

        Console.WriteLine("Quick Sort:");

        Order[] quickOrders = (Order[])orders.Clone();

        QuickSort(
            quickOrders,
            0,
            quickOrders.Length - 1);

        DisplayOrders(quickOrders);
    }

    static void BubbleSort(Order[] orders)
    {
        int n = orders.Length;

        for (int i = 0; i < n - 1; i++)
        {
            for (int j = 0; j < n - i - 1; j++)
            {
                if (orders[j].TotalPrice >
                    orders[j + 1].TotalPrice)
                {
                    Order temp = orders[j];
                    orders[j] = orders[j + 1];
                    orders[j + 1] = temp;
                }
            }
        }
    }

    static void QuickSort(
        Order[] orders,
        int low,
        int high)
    {
        if (low < high)
        {
            int pi = Partition(
                orders,
                low,
                high);

            QuickSort(
                orders,
                low,
                pi - 1);

            QuickSort(
                orders,
                pi + 1,
                high);
        }
    }

    static int Partition(
        Order[] orders,
        int low,
        int high)
    {
        double pivot =
            orders[high].TotalPrice;

        int i = low - 1;

        for (int j = low; j < high; j++)
        {
            if (orders[j].TotalPrice < pivot)
            {
                i++;

                Order temp = orders[i];
                orders[i] = orders[j];
                orders[j] = temp;
            }
        }

        Order temp2 = orders[i + 1];
        orders[i + 1] = orders[high];
        orders[high] = temp2;

        return i + 1;
    }

    static void DisplayOrders(Order[] orders)
    {
        foreach (Order order in orders)
        {
            Console.WriteLine(
                $"{order.OrderId} | " +
                $"{order.CustomerName} | " +
                $"{order.TotalPrice}");
        }
    }
}