import 'package:flutter/material.dart';
import 'package:midterm/data/helper/methods_helper.dart';
import 'package:midterm/data/models/model.dart';

import 'home_screen.dart';

class AddProduct extends StatelessWidget {
  static const routeName = "add-new-clothes";

  final _formKey = GlobalKey<FormState>();

  TextEditingController clothesID = TextEditingController();
  TextEditingController clothesName = TextEditingController();
  TextEditingController clothesImageUrl = TextEditingController();
  TextEditingController clothesSize = TextEditingController();
  TextEditingController clothesPrice = TextEditingController();
  TextEditingController clothesDescription = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Card(
                    child: TextFormField(
                      controller: clothesID,
                      decoration: InputDecoration(hintText: "Please enter ID" ),
                      keyboardType: TextInputType.number,
                      validator: (value){
                        if(value == null || value.isEmpty) {
                          return "Please enter valid ID";
                        }
                        return null;
                      },
                    ),
                    elevation: 3.0,
                  ),
                  Card(
                    child: TextFormField(
                      controller: clothesName,
                      decoration: InputDecoration(hintText: "Please enter name" ),
                      validator: (value){
                        if(value == null || value.isEmpty) {
                          return "Please enter valid name";
                        }
                        return null;
                      },
                    ),
                    elevation: 3.0,
                  ),
                  Card(
                    child: TextFormField(
                      controller: clothesImageUrl,
                      decoration: InputDecoration(hintText: "Please enter image" ),
                      validator: (value){
                        if(value == null || value.isEmpty) {
                          return "Please enter valid image";
                        }
                        return null;
                      },
                    ),
                    elevation: 3.0,
                  ),
                  Card(
                    child: TextFormField(
                      controller: clothesSize,
                      decoration: InputDecoration(hintText: "Please enter size" ),
                      validator: (value){
                        if(value == null || value.isEmpty) {
                          return "Please enter valid size";
                        }
                        return null;
                      },
                    ),
                    elevation: 3.0,
                  ),
                  Card(
                    child: TextFormField(
                      controller: clothesPrice,
                      decoration: InputDecoration(hintText: "Please enter price" ),
                      keyboardType: TextInputType.number,
                      validator: (value){
                        if(value == null || value.isEmpty) {
                          return "Please enter valid price";
                        }
                        return null;
                      },
                    ),
                    elevation: 3.0,
                  ),
                  Card(
                    child: TextFormField(
                      controller: clothesDescription,
                      decoration: InputDecoration(hintText: "Please enter description" ),
                      validator: (value){
                        if(value == null || value.isEmpty) {
                          return "Please enter valid description";
                        }
                        return null;
                      },
                    ),
                    elevation: 3.0,
                  ),

                  SizedBox(
                    height: 40,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomeScreen()),
                            ),
                        child: Text("Back"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()){
                            Clothes clothes = Clothes(
                              id: int.tryParse(clothesID.text),
                              name: clothesName.text,
                              imageUrl: clothesImageUrl.text,
                              size: clothesSize.text,
                              price: double.tryParse(clothesPrice.text),
                              description: clothesDescription.text,
                            );
                            MethodHelper().addClothes(clothes);
                            Navigator.pop(context);Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomeScreen()),
                            );

                          }
                        },
                        child: Text("Add"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
