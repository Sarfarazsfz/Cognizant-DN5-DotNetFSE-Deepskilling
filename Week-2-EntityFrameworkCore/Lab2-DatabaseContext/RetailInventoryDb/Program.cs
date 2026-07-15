using Microsoft.EntityFrameworkCore;
using RetailInventoryDb;

Console.WriteLine("===== LAB 5 : Retrieving Data =====");

await using var context = new AppDbContext();

Console.WriteLine("\nAll Products:");

var products = await context.Products.ToListAsync();

foreach (var p in products)
{
    Console.WriteLine($"{p.Name} - ₹{p.Price}");
}

Console.WriteLine();

var product = await context.Products.FindAsync(1);

Console.WriteLine($"Found: {product?.Name}");

var expensive =
    await context.Products
        .FirstOrDefaultAsync(p => p.Price > 50000);

Console.WriteLine($"Expensive: {expensive?.Name}");