using LibraryManagementSystem;

Book[] books =
{
    new Book(101, "C Programming", "Dennis Ritchie"),
    new Book(102, "Data Structures", "Mark Allen"),
    new Book(103, "Java Programming", "James Gosling"),
    new Book(104, "Python Basics", "Guido van Rossum"),
    new Book(105, "Web Development", "John Smith")
};

Console.WriteLine("Linear Search:");

Book linearResult =
    LinearSearch(books, "Python Basics");

if (linearResult != null)
{
    Console.WriteLine(
        $"Found: {linearResult.Title} - {linearResult.Author}");
}

Console.WriteLine();

Console.WriteLine("Binary Search:");

Book binaryResult =
    BinarySearch(books, "Python Basics");

if (binaryResult != null)
{
    Console.WriteLine(
        $"Found: {binaryResult.Title} - {binaryResult.Author}");
}

static Book LinearSearch(
    Book[] books,
    string title)
{
    foreach (Book book in books)
    {
        if (book.Title.Equals(
            title,
            StringComparison.OrdinalIgnoreCase))
        {
            return book;
        }
    }

    return null;
}

static Book BinarySearch(
    Book[] books,
    string title)
{
    int left = 0;
    int right = books.Length - 1;

    while (left <= right)
    {
        int mid = left + (right - left) / 2;

        int comparison =
            string.Compare(
                books[mid].Title,
                title,
                StringComparison.OrdinalIgnoreCase);

        if (comparison == 0)
        {
            return books[mid];
        }

        if (comparison < 0)
        {
            left = mid + 1;
        }
        else
        {
            right = mid - 1;
        }
    }

    return null;
}