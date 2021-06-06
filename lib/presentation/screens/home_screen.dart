import 'package:flutter/material.dart';
import '../../data/models/todo.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Todo> todos;

  HomeScreen({Key? key, required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Users')),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Center(child: Text(todos[index].name, style: TextStyle(fontSize: 20))),

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(),
                  settings: RouteSettings(
                    arguments: todos[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
