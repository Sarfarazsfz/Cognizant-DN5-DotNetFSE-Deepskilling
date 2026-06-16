using System;

namespace TaskManagementSystem
{
    public class TaskLinkedList
    {
        private TaskNode head;

        public void AddTask(TaskItem task)
        {
            TaskNode newNode = new TaskNode(task);

            if (head == null)
            {
                head = newNode;
                return;
            }

            TaskNode current = head;

            while (current.Next != null)
            {
                current = current.Next;
            }

            current.Next = newNode;
        }

        public TaskItem SearchTask(int taskId)
        {
            TaskNode current = head;

            while (current != null)
            {
                if (current.Data.TaskId == taskId)
                {
                    return current.Data;
                }

                current = current.Next;
            }

            return null;
        }

        public void TraverseTasks()
        {
            TaskNode current = head;

            while (current != null)
            {
                Console.WriteLine(
                    $"{current.Data.TaskId} | " +
                    $"{current.Data.TaskName} | " +
                    $"{current.Data.Status}");

                current = current.Next;
            }
        }

        public void DeleteTask(int taskId)
        {
            if (head == null)
            {
                return;
            }

            if (head.Data.TaskId == taskId)
            {
                head = head.Next;
                Console.WriteLine($"Task {taskId} Deleted");
                return;
            }

            TaskNode current = head;

            while (
                current.Next != null &&
                current.Next.Data.TaskId != taskId)
            {
                current = current.Next;
            }

            if (current.Next != null)
            {
                current.Next = current.Next.Next;
                Console.WriteLine($"Task {taskId} Deleted");
            }
            else
            {
                Console.WriteLine("Task Not Found");
            }
        }
    }
}