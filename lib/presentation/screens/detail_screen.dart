import 'package:flutter/material.dart';
import '../../data/models/todo.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final todo = ModalRoute.of(context)!.settings.arguments as Todo;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(todo.name)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Name: " + todo.name, style: TextStyle(fontSize: 20)),
            Text("Age: " + todo.age, style: TextStyle(fontSize: 20)),
            Text("Gender: " + todo.gender, style: TextStyle(fontSize: 20)),
            Text("Email: " + todo.email, style: TextStyle(fontSize: 20)),
            Text("Phone: " + todo.phone, style: TextStyle(fontSize: 20))
          ],
        ),
      ),
    );
  }
}