import 'package:hive_flutter/hive_flutter.dart';

class Tododatabase {
  List todoList = [];

  final _mybox = Hive.box('mybox');

  void createInitialData() {
    todoList = [
      ["Practice Flutter", false],
      ["Sleeping", false],
    ];
  }

  void loadData() {
    todoList = _mybox.get("TODOLIST");
  }

  void updateData() {
    _mybox.put("TODOLIST", todoList);
  }
}
