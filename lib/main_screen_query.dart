import 'package:flutter/material.dart';

class MainScreenQuery extends StatefulWidget {
  @override
  _MainScreenQueryState createState() => _MainScreenQueryState();
}

class _MainScreenQueryState extends State<MainScreenQuery> {
  String image = 'https://nssdc.gsfc.nasa.gov/imgcat/hires/mgn_p39224.gif';
  String text = 'This Is Venera';
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
          Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text('$text',
                  style: TextStyle(
                    fontSize: 50.0,
                  ))),
          Container(padding: EdgeInsets.fromLTRB(20, 20, 20, 60), child: Image.network('$image')),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () {
                  setState(() {
                    text = 'This Is Venera';
                    image = ('https://nssdc.gsfc.nasa.gov/imgcat/hires/mgn_p39224.gif');
                  });
                },
                child: Text('Venera',
                    style: TextStyle(
                      fontSize: 30.0,
                    )),
                textColor: Colors.white,
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    text = 'This Is Mercury';
                    image = ('https://c.ndtvimg.com/2019-11/7bja6f74_mercury-pixabay_625x300_09_November_19.jpg');
                  });
                },
                child: Text('Mercury',
                    style: TextStyle(
                      fontSize: 30.0,
                    )),
                textColor: Colors.white,
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    text = 'This Is Mars';
                    image = ('https://mars.nasa.gov/system/content_pages/main_images/418_marsglobe.jpg');
                  });
                },
                child: Text('Mars',
                    style: TextStyle(
                      fontSize: 30.0,
                    )),
                textColor: Colors.white,
              ),
            ],
          )
        ]));
  }
}
