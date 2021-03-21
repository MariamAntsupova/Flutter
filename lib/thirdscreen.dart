import 'package:flutter/material.dart';
import 'secondscreen.dart';
import 'main.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter App"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "This is The Venera",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 80,
                ),
                Image.network('https://g1.dcdn.lt/images/pix/file294490_venera.jpg'),
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
                                child:Text(
                                    "Venera",
                                ),
                                onPressed:(){
                                    Navigator.push(context, 
                                    MaterialPageRoute(builder: (context)=>ThirdScreen(), ),);
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
