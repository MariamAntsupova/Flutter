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
    return Container(
        child: Row(children: <Widget>[
          Container(child: Image.network('$image'), height: 200, width: 200 , margin: EdgeInsets.symmetric(horizontal: 10.0)
          ),
          Container(
              child: Text('$text',
                  style: TextStyle(
                    fontSize: 30.0,
                  )),
              margin: EdgeInsets.symmetric(horizontal: 20.0)
          ),
          Column(
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
                        fontSize: 25,
                      )),
                  textColor: Colors.white,
                  color: Colors.black
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
                        fontSize: 25,
                      )),
                  textColor: Colors.white,
                  color: Colors.black
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
                        fontSize: 25,
                      )),
                  textColor: Colors.white,
                  color: Colors.black
              ),
            ],
          )
        ]));
  }
}
