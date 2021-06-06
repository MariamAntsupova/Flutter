import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'data/models/todo.dart';
import 'presentation/screens/home_screen.dart';


void main() async {
  var dio = Dio();
  final response = await dio.get('https://randomuser.me/api/?results=30');
  var users = response.data['results'];

  runApp(
    MaterialApp(
      title: 'Passing Data',
      home: HomeScreen(
        todos: List.generate(
          30,
              (i) => Todo(
            users[i]['name']['title'] + ' ' + users[i]['name']['first'] + ' ' + users[i]['name']['last'],
            users[i]['dob']['age'].toString(),
            users[i]['gender'],
            users[i]['email'],
            users[i]['phone'].toString(),
          ),
        ),
      ),
    ),
  );
}