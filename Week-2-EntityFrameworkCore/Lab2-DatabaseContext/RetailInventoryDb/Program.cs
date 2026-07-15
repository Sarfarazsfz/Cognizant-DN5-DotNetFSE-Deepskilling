using Microsoft.EntityFrameworkCore;
using RetailInventoryDb;

Console.WriteLine("===== LAB 6 : Update and Delete Records =====");

await using var context = new AppDbContext();

var product =
    await context.Products
        .FirstOrDefaultAsync(p => p.Name == "Laptop");

if (product != null)
{
    product.Price = 70000;

    await context.SaveChangesAsync();

    Console.WriteLine("Laptop price updated to ₹70000");
}

var toDelete =
    await context.Products
        .FirstOrDefaultAsync(p => p.Name == "Rice Bag");

if (toDelete != null)
{
    context.Products.Remove(toDelete);

    await context.SaveChangesAsync();

    Console.WriteLine("Rice Bag deleted successfully");
}

Console.WriteLine("\nCurrent Products:");

var products = await context.Products.ToListAsync();

foreach (var p in products)
{
    Console.WriteLine($"{p.Name} - ₹{p.Price}");
}