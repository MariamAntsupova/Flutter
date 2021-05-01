import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:midterm/data/helper/methods_helper.dart';
import 'package:midterm/data/models/model.dart';

import 'home_screen.dart';


class DetailsScreen extends StatefulWidget {
  static const routeName = "/details-screen";
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool DESCRIPTION = false;
  @override
  Widget build(BuildContext context) {
    final Clothes clothes = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar:AppBar(
        actions: [
          Dismissible(
            child: IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
            ),
            key: UniqueKey(),
            direction: DismissDirection.endToStart,
            confirmDismiss: (onPressed) => showDialog(
                context: context,
                builder: (_) => AlertDialog(
                    title: Text("Are you sure? "),
                    content: Text("Do you really want to delete this product ? "),
                    actions: [
                        TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text("NO"),
                        ),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                  MethodHelper().deleteClothes(clothes.id);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => HomeScreen()),
                                  );
                              });
                            },
                            child: Text("YES"),
                        )
                  ],
                ),
            ),
          ),],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Image.network(
                clothes.imageUrl,
                height: 300,
              ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Name: ",
                      style: Theme.of(context).textTheme.headline6..color.value,
                    ),

                    Text(
                      clothes.name,
                      style: Theme.of(context).textTheme.headline6..color.value,
                    ),
                  ],
                ),

               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Price: ",
                      style: Theme.of(context).textTheme.headline6..color.value,
                    ),
                    Text(
                      clothes.price.toString(),
                      style: Theme.of(context).textTheme.headline6..color.value,
                    ),
                  ],
                ),

              SizedBox(
                height: 25,
              ),

              TextButton(
                  child: DESCRIPTION ? Text(
                    clothes.description,
                    style: Theme.of(context).textTheme.headline6..color.value,
                  ) : Text(
                    "DESCRIPTION" ,
                    style: Theme.of(context).textTheme.headline6..color.value,
                  ),

                  //    style: TextStyle(fontSize: 14)
                  onPressed: () {
                    setState(() {
                      DESCRIPTION = !DESCRIPTION;
                    });
                  }
              ),

            ],
          ),
        ),
      ),
    );
  }
}
