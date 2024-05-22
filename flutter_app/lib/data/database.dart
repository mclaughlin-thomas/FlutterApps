import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{
  List toDoList = [];

  //reference the box
  final _myBox = Hive.box('mybox');

  //run this method if first time ever opening the app
  void createInitialData(){
    toDoList = [
      ['Buy groceries', false],
      ['Walk the dog', false],
    ];
  }

  //load the data from db
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  //update the db
  void updateData(){
    _myBox.put("TODOLIST", toDoList);
  }
}