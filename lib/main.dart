import 'package:flutter/material.dart';
import 'package:new_project/todo_model.dart';
import 'todo_service.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo Demo',
      theme: ThemeData.light(),
      home: const TodoPage(),
    );
  }
}

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final TodoService _todoService = TodoService();
  late Future<List<Todo>> _todosFuture;
  List<Todo> _todos = [];

  @override
  void initState() {
    super.initState();
    _loadTodos();
  }

  void _loadTodos() {
    _todosFuture = _todoService.fetchTodos();
    _todosFuture.then((list) {
      setState(() {
        _todos = list;
      });
    });
  }

  Future<void> _addOrEditTodoDialog({Todo? todo}) async {
    final TextEditingController taskController = TextEditingController(text: todo?.task ?? '');
    bool done = todo?.done ?? false;

    final result = await showDialog<Todo>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(todo == null ? 'Add Todo' : 'Edit Todo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: taskController,
                decoration: const InputDecoration(labelText: 'Task'),
              ),
              Row(
                children: [
                  const Text('Done'),
                  Switch(
                    value: done,
                    onChanged: (value) {
                      setState(() {
                        done = value;
                      });
                    },
                  )
                ],
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(null),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (taskController.text.trim().isEmpty) return;
                final newTodo = Todo(
                  id: todo?.id ?? 0,
                  task: taskController.text.trim(),
                  done: done,
                );
                Navigator.of(context).pop(newTodo);
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );

    if (result != null) {
      if (todo == null) {
        // Add
        final addedTodo = await _todoService.addTodo(result);
        setState(() {
          _todos.add(addedTodo);
        });
      } else {
        // Update
        final updatedTodo = await _todoService.updateTodo(result);
        setState(() {
          final index = _todos.indexWhere((t) => t.id == updatedTodo.id);
          if (index != -1) {
            _todos[index] = updatedTodo;
          }
        });
      }
    }
  }

  Future<void> _deleteTodo(int id) async {
    await _todoService.deleteTodo(id);
    setState(() {
      _todos.removeWhere((todo) => todo.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      body: _todos.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _todos.length,
              itemBuilder: (context, index) {
                final todo = _todos[index];
                return ListTile(
                  title: Text(todo.task),
                  leading: Checkbox(
                    value: todo.done,
                    onChanged: (bool? value) async {
                      if (value == null) return;
                      final updatedTodo = Todo(id: todo.id, task: todo.task, done: value);
                      final result = await _todoService.updateTodo(updatedTodo);
                      setState(() {
                        _todos[index] = result;
                      });
                    },
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () => _addOrEditTodoDialog(todo: todo),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => _deleteTodo(todo.id),
                      ),
                    ],
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addOrEditTodoDialog(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
