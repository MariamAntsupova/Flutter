import 'package:flutter/material.dart';
import 'package:midterm/data/models/dummy_data.dart';
import 'package:midterm/data/models/model.dart';
import 'package:midterm/screens/details_screen.dart';
import 'package:midterm/screens/edit_screen.dart';
import 'package:midterm/widgets/main_list_item.dart';

import 'add_new.dart';

class HomeScreen extends StatelessWidget {
  List<Clothes> clothesList = DUMMY_DATA;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child:
            Text('App Title'),
        ),
      ),
      body: GridView.count(
      crossAxisCount: 2,
        children: List.generate(clothesList.length, (index) {
          var clothes = clothesList[index];
          return GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              DetailsScreen.routeName,
              arguments: clothes ,
            ),
            onLongPress: (){
              Navigator.pushNamed(context, EditScreen.routName, arguments: {
                "clothes" : clothes , "index" : index,
              },);
            },
            child: MainListItem(
            imageUrl: clothes.imageUrl,
            name: clothes.name,
            price: clothes.price.toString(),
            ),
          );
      }
      ),
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, AddProduct.routeName),
        child: Icon(Icons.add),
      ),
    );
  }
}
