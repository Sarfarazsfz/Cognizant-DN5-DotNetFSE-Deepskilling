namespace TaskManagementSystem
{
    public class TaskItem
    {
        public int TaskId { get; set; }

        public string TaskName { get; set; }

        public string Status { get; set; }

        public TaskItem(
            int taskId,
            string taskName,
            string status)
        {
            TaskId = taskId;
            TaskName = taskName;
            Status = status;
        }
    }
}