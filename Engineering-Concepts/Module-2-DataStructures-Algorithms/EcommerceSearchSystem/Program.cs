using EcommerceSearchSystem;

class Program
{
    static void Main(string[] args)
    {
        Product[] products =
        {
            new Product(101,"Laptop","Electronics"),
            new Product(102,"Mouse","Electronics"),
            new Product(103,"Keyboard","Electronics"),
            new Product(104,"Monitor","Electronics"),
            new Product(105,"Printer","Electronics")
        };

        Console.WriteLine("Linear Search:");

        Product linearResult =
            LinearSearch(products, 104);

        if (linearResult != null)
            Console.WriteLine(
                $"Found: {linearResult.ProductName}");

        Console.WriteLine();

        Console.WriteLine("Binary Search:");

        Product binaryResult =
            BinarySearch(products, 104);

        if (binaryResult != null)
            Console.WriteLine(
                $"Found: {binaryResult.ProductName}");
    }

    static Product LinearSearch(
        Product[] products,
        int productId)
    {
        foreach (Product product in products)
        {
            if (product.ProductId == productId)
            {
                return product;
            }
        }

        return null;
    }

    static Product BinarySearch(
        Product[] products,
        int productId)
    {
        int left = 0;
        int right = products.Length - 1;

        while (left <= right)
        {
            int mid = left + (right - left) / 2;

            if (products[mid].ProductId == productId)
                return products[mid];

            if (products[mid].ProductId < productId)
                left = mid + 1;
            else
                right = mid - 1;
        }

        return null;
    }
}