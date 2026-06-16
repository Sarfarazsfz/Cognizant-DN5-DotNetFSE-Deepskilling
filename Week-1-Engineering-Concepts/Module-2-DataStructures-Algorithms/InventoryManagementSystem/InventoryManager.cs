using System;
using System.Collections.Generic;

namespace InventoryManagementSystem
{
    public class InventoryManager
    {
        private Dictionary<int, Product> inventory =
            new Dictionary<int, Product>();

        public void AddProduct(Product product)
        {
            inventory[product.ProductId] = product;

            Console.WriteLine(
                $"Product Added: {product.ProductName}");
        }

        public void UpdateProduct(
            int productId,
            int quantity,
            double price)
        {
            if (inventory.ContainsKey(productId))
            {
                inventory[productId].Quantity = quantity;
                inventory[productId].Price = price;

                Console.WriteLine(
                    $"Product {productId} Updated");
            }
            else
            {
                Console.WriteLine("Product Not Found");
            }
        }

        public void DeleteProduct(int productId)
        {
            if (inventory.Remove(productId))
            {
                Console.WriteLine(
                    $"Product {productId} Deleted");
            }
            else
            {
                Console.WriteLine("Product Not Found");
            }
        }

        public void DisplayProducts()
        {
            Console.WriteLine("\nInventory:");

            foreach (var product in inventory.Values)
            {
                Console.WriteLine(
                    $"{product.ProductId} | " +
                    $"{product.ProductName} | " +
                    $"Qty:{product.Quantity} | " +
                    $"Price:{product.Price}");
            }
        }
    }
}