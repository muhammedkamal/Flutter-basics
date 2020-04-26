import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:todoay/widgets/task.dart';
import 'add_task.dart';
import 'package:provider/provider.dart';




class TasksScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      floatingActionButton:  FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                  child:Container(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskScreen(/*(newTaskTitle){
                      setState(() {
                        if (newTaskTitle!=null||newTaskTitle!='')
                          widget.tasks.add(Task(name: newTaskTitle));
                      });
                      Navigator.pop(context);
                    }*/),
                  )
              )
          );
        },
        backgroundColor: Colors.lightBlue,
        child: Icon(
          Icons.add,
          size: 30.0,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60.0,left: 30.0,right: 30.0,bottom: 30.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(
                      Icons.list,
                    color:Colors.lightBlue,
                    size: 30.0,
                  ),
                ),
                SizedBox(height: 10.0,),
                Text('ToDoay',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w900,
                ),),
                Text(
                  '${Provider.of<TasksData>(context).numberOfTasks} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: TaskList(),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),topLeft:Radius.circular(20.0)),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

