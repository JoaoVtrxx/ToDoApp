import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  final _myBox = Hive.box('mybox');

  // first time ever open app:
  void createInitialData() {
    toDoList = [
      ["Escrever uma atividade", false],
      ["Marca-la como concluida", false],
      ["Excluir a atividade", false],
    ];
  }

  //load data from database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  //update the data
  void updateDataBase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
