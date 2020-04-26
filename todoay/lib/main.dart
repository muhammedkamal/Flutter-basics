import 'package:flutter/material.dart';
import 'screens/tasks_screen.dart';
import 'widgets/task.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>TasksData( ),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}



