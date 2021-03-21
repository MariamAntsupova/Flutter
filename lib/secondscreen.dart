import 'package:flutter/material.dart';
import 'thirdscreen.dart';
import 'main.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
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
                  "This is The Mercury",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 80,
                ),
                Image.network('https://c.ndtvimg.com/2019-11/7bja6f74_mercury-pixabay_625x300_09_November_19.jpg'),
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
                // RaisedButton(
                //     child:Text(
                //         "Venera",
                //     ),
                //     onPressed:(){
                //         Navigator.push(context,
                //         MaterialPageRoute(builder: (context)=>ThirdScreen(), ),);
                //     },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
