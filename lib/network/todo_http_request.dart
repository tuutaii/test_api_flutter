import 'dart:convert';

import 'package:flutter_api/models/todo_model.dart';
import 'package:flutter_api/network/http_request.dart';
import 'package:http/http.dart' as http;

class TodoHttpRequest implements GetRequest<Todo> {
  final String url;

  const TodoHttpRequest({this.url = ""});

  @override
  Future<Todo> perform() async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return Todo.fromJson(jsonDecode(response.body));
    }

    throw HttpRequestException("${response.statusCode}: ${response.body}");
  }
}
