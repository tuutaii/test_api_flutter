import 'dart:convert';

class Todo {
  int userId;
  int id;
  String title;
  bool completed;

  Todo(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      completed: json['completed']);

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = Map<String, dynamic>();
  //   data['userId'] = userId;
  //   data['id'] = id;
  //   data['title'] = title;
  //   data['completed'] = completed;
  //   return data;
  // }
}
