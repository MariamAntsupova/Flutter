import 'package:flutter/material.dart';
import 'package:midterm/screens/add_new.dart';
import 'package:midterm/screens/details_screen.dart';
import 'package:midterm/screens/edit_screen.dart';
import 'package:midterm/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Midterm One',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        DetailsScreen.routeName: (context) => DetailsScreen(),
        AddProduct.routeName: (context) => AddProduct(),
        EditScreen.routName: (context) => EditScreen(),
      },
    );
  }
}

