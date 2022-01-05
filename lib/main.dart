// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/screens/taskSreen.dart';
import 'package:slide_drawer/slide_drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SlideDrawer(
          headDrawer: Image.network('https://images.unsplash.com/photo-1553095066-5014bc7b7f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d2FsbCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80',fit: BoxFit.cover,),
          brightness: Brightness.dark,
          contentDrawer: Container(
            color: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                ListTile(
                    title: Text('Home'),
                    leading: Icon(Icons.home),
                    onTap: () {}),
              ],
            ),
          ),
          child: TasksScreen(),
        ),
      ),
    );
  }
}
