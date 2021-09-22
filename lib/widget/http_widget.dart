import 'package:flutter/material.dart';
import 'package:flutter_api/models/todo_model.dart';
import 'package:flutter_api/network/http_request.dart';
import 'package:flutter_api/widget/todo_widget.dart';

class HTTPWidget extends StatefulWidget {
  // const HTTPWidget({Key? key}) : super(key: key);
  final GetRequest<Todo> _request;
  const HTTPWidget(this._request);
  @override
  _HTTPWidgetState createState() => _HTTPWidgetState();
}

class _HTTPWidgetState extends State<HTTPWidget> {
  late Future<Todo> _futureTodo;

  @override
  void initState() {
    super.initState();
    _futureTodo = widget._request.perform();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Todo>(
      future: _futureTodo,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Icon(Icons.error_rounded);
        }
        if (snapshot.hasData) {
          return TodoWidget(snapshot.data!);
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
