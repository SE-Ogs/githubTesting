class Todo {
  int id;
  String task;
  bool done;

  Todo({
    required this.id,
    required this.task,
    required this.done,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json['id'] as int,
      task: json['task'] as String,
      done: json['done'] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'task': task,
      'done': done,
    };
  }
}
