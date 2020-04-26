import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';

class Task{
  final String name;
  bool isDone;
  Task({this.name,this.isDone=false});
  void toggleDone()
  {
    isDone=!isDone;
  }
}
class TasksData extends ChangeNotifier{
  List <Task> tasks=[
    Task(name: 'bla'),
    Task(name: 'bla')
  ];
  void addTask(Task newTask)
  {
    tasks.add(newTask);
    notifyListeners();
  }
  int get numberOfTasks
  {
    return tasks.length;
    //notifyListeners();
  }
  Task getTask(int index)
  {
    return tasks[index];
  }
  void updateTaskStatus(int index)
  {
    tasks[index].toggleDone();
    notifyListeners();
  }
  void deleteTask(int index)
  {
    tasks.remove(tasks[index]);
    notifyListeners();
  }
}

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(30.0),
      itemBuilder: (context, index){
        return FlatButton(
          onLongPress: (){Provider.of<TasksData>(context,listen: false).deleteTask(index);},
          child: TaskTile(
            taskTitle: Provider.of<TasksData>(context).tasks[index].name,
            isChecked: Provider.of<TasksData>(context,listen: true).tasks[index].isDone,
            checkBoxCallBack: (checkBoxState){
                Provider.of<TasksData>(context,listen: false).updateTaskStatus(index);
            },
          ),
        );
      },itemCount: Provider.of<TasksData>(context).numberOfTasks,
    );
  }
}

class TaskTile extends StatelessWidget {
TaskTile({this.isChecked,this.taskTitle,this.checkBoxCallBack});
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
        style: TextStyle(
          fontSize: 22.0,
          decoration:isChecked? TextDecoration.lineThrough:null,
        ),),
      trailing: Checkbox(value: isChecked,
      activeColor: Colors.lightBlue,
      onChanged: checkBoxCallBack,
    ),
    );
  }
}