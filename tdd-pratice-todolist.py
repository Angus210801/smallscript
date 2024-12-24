import unittest

class ToDoList:
    def __init__(self):
        self.items = []
        self.completed_items = set()  # 用一个集合来记录已完成的任务

    def add_item(self, task):
        if task not in self.items:
            self.items.append(task)

    def mark_completed(self, task):
        if task in self.items:
            self.completed_items.add(task)

    def remove_item(self, task):
        if task in self.items:
            self.items.remove(task)
            self.completed_items.discard(task)

    def get_pending_items(self):
        return [task for task in self.items if task not in self.completed_items]


class TestToDoList(unittest.TestCase):
    def setUp(self):
        self.todo_list = ToDoList()

    def test_add_item(self):
        self.todo_list.add_item("Buy CatFood")
        self.assertIn("Buy CatFood", self.todo_list.items)

    def test_mark_completed(self):
        self.todo_list.add_item("Write TestReport")
        self.todo_list.mark_completed("Write report")
        self.assertNotIn("Write report", self.todo_list.get_pending_items())

    def test_remove_item(self):
        self.todo_list.add_item("Daily standup")
        self.todo_list.remove_item("Daily standup")
        self.assertNotIn("Daily standup", self.todo_list.items)

    def test_get_pending_items(self):
        self.todo_list.add_item("Read book")
        self.todo_list.add_item("Exercise")
        self.todo_list.mark_completed("Read book")
        self.assertEqual(self.todo_list.get_pending_items(), ["Exercise"])


if __name__ == '__main__':
    unittest.main()
