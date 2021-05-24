import 'package:flutter/material.dart';
import 'package:flutter_rest_api_example/data/models/todo.dart';
import 'package:provider/provider.dart';

class AddNew extends StatefulWidget {
  const AddNew({Key? key}) : super(key: key);

  @override
  _AddNewState createState() => _AddNewState();
}

class _AddNewState extends State<AddNew> {
  final TextEditingController _titleController = TextEditingController();
  // final TextEditingController _completeController = TextEditingController();
  var isComplete = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 400,
        padding: EdgeInsets.only(right: 15, top: 10, left: 15),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(hintText: "Please enter title"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('is complete ? '),
                Checkbox(
                  value: isComplete,
                  onChanged: (value) {
                    setState(() {
                      isComplete = value!;
                    });
                  },
                )
              ],
            ),

            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () => Provider.of<Todo>(context, listen: false).addTask(
                  _titleController.text, isComplete ),
              child: Text('Add Task'),
            )
          ],
        ),
      ),
    );
  }
}
