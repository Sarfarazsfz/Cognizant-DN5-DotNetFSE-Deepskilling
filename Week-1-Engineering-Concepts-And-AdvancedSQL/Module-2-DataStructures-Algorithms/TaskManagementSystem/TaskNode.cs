namespace TaskManagementSystem
{
    public class TaskNode
    {
        public TaskItem Data { get; set; }

        public TaskNode Next { get; set; }

        public TaskNode(TaskItem task)
        {
            Data = task;
            Next = null;
        }
    }
}