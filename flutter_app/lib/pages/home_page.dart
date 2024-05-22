import 'package:flutter/material.dart';
import 'package:flutter_app/util/dialog_box.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../data/database.dart';
import '../util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //ref the hive box
  final _myBox = Hive.box('mybox');

  final _controller = TextEditingController();

  ToDoDataBase db = ToDoDataBase();

  @override
  void initState() {
    //if first time ever opening the app, then create defualt data

    if(_myBox.get("TODO") == null){
      db.createInitialData();
    }
    else{
      //there already exists data
      db.loadData();
    }
    
    super.initState();
  }

  void checkBoxChanged(bool? value, int index){
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updateData();
  }

  void saveNewTask(){
    setState(() {
      db.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
    db.updateData();
  }

  void createNewTask(){
    showDialog(
      context: context,
      builder: (context) {
        return DioalogBox(
          controller: _controller,
          onSave: saveNewTask,
          onCancel: () => Navigator.pop(context),
        );
      },
    );
  }

  void deleteTask(int index){
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 174, 245, 127),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 158, 204, 72),
        title: Center(child: Text('To Do')),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: db.toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: db.toDoList[index][0],
            taskCompleted: db.toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),
          );
        },
      )
    );
  }
}
