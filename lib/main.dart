import 'package:flutter/material.dart';
import 'package:flutter_api/network/todo_http_request.dart';
import 'package:flutter_api/widget/http_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const _url = "https://jsonplaceholder.typicode.com/todos/1";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: Center(
          child: HTTPWidget(TodoHttpRequest(url: _url)),
        ),
      ),
    );
  }
}
