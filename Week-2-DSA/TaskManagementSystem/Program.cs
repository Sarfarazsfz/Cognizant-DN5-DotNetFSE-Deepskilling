using TaskManagementSystem;

TaskLinkedList taskList = new TaskLinkedList();

taskList.AddTask(
    new TaskItem(
        101,
        "Design Database",
        "Pending"));

taskList.AddTask(
    new TaskItem(
        102,
        "Develop API",
        "In Progress"));

taskList.AddTask(
    new TaskItem(
        103,
        "Testing",
        "Pending"));

Console.WriteLine("All Tasks:");

taskList.TraverseTasks();

Console.WriteLine();

Console.WriteLine("Search Task 102:");

TaskItem foundTask =
    taskList.SearchTask(102);

if (foundTask != null)
{
    Console.WriteLine(
        $"{foundTask.TaskId} | " +
        $"{foundTask.TaskName}");
}

Console.WriteLine();

taskList.DeleteTask(102);

Console.WriteLine();

Console.WriteLine("After Deletion:");

taskList.TraverseTasks();