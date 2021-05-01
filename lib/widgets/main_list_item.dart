import 'package:flutter/material.dart';

class MainListItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String price;

  MainListItem({
    this.name,
    this.imageUrl,
    this.price,
  });

  @override
  Widget build(BuildContext context) {

    return Card(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Flexible(
              child: Container(
                child: FadeInImage(
                  width: double.infinity,
                  fit: BoxFit.cover,
                  placeholder: AssetImage("asset/image/clothes_placeholder.png"),
                  image: NetworkImage(imageUrl),
                ),
              ),
            ),
            Text(
              name,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              price,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
