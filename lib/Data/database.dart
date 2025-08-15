
import 'package:hive/hive.dart';

class TodoDatabase {

  List TodoList = [];

  final _mybox = Hive.box('myBox');


  void showInitialData() {
     TodoList = [
      ["Make tutorials", false],
      ["Do Exercise", false],
    ];
  }

  void loadData () {
   TodoList = _mybox.get('TODOLIST');
  }

  void updateData () {
    _mybox.put('TODOLIST', TodoList);
  }

}