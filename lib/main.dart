import 'package:flutter/material.dart';
import 'secondscreen.dart';
import 'thirdscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Planets",
      home: HomeScreen(),
      theme: ThemeData.dark(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter Planets"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "This is The Mars",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 80,
                ),
                Image.network('data:image/jpeg;base64,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'),
                SizedBox(
                  height: 60,
                ),
                new Container(
                  margin: new EdgeInsets.symmetric(horizontal: 60.0),
                  child: new Row(
                    children: <Widget>[
                      RaisedButton(
                        child: Text(
                          "Mars",
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                      ),
                      RaisedButton(
                        child: Text(
                          "Mercury",
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SecondScreen(),
                            ),
                          );
                        },
                      ),
                      RaisedButton(
                        child: Text(
                          "Venera",
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ThirdScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
