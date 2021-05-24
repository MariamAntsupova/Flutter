import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rest_api_example/data/models/todo.dart';
import 'package:flutter_rest_api_example/logic/cubits/todo_data/todo_data_cubit.dart';

import 'add_new_screen.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key, required this.userID}) : super(key: key);
  final String userID;

  @override
  _TodoScreenState createState() => _TodoScreenState();

  // static void removeTask(int index) {
  //   tasksList.removeAt(index);
  // }
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<TodoDataCubit, TodoDataState>(
        listener: (context, state) {
          if (state is TodoDataError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('${state.message}')),
            );
          }
        },
        builder: (context, state) {
          if (state is TodoDataInitial) {
            BlocProvider.of<TodoDataCubit>(context)
                .getTodoData(widget.userID.toString());
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is TodoDataLoaded) {
            return ListView.builder(
              itemBuilder: (context, index) {
                var todo = state.todoList[index];
                ListTile(
                   onLongPress: () => todo.removeTask(index),
                   title: Text('${todo.title!}'),
                    trailing: Icon(todo.completed! ? Icons.done : Icons.close),
                );

                return ListTile(
                  title: Text('${todo.title!}'),
                  trailing: Icon(todo.completed! ? Icons.done : Icons.close),
                );
              },
            );
          } else {
            return Center(
              child: Text('Ops! Something went wrong!'),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (ctx) => AddNew(),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
