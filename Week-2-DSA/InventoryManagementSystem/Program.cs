using InventoryManagementSystem;

InventoryManager manager = new InventoryManager();

manager.AddProduct(
    new Product(101, "Laptop", 15, 55000));

manager.AddProduct(
    new Product(102, "Mouse", 50, 500));

manager.AddProduct(
    new Product(103, "Keyboard", 30, 1200));

manager.DisplayProducts();

manager.UpdateProduct(102, 60, 550);

manager.DeleteProduct(103);

manager.DisplayProducts();