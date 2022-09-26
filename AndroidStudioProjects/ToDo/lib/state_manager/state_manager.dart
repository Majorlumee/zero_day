import 'package:flutter/material.dart';

import '../model/to_do_services.dart';

class StateManager extends ChangeNotifier{
  List<Task> priorites = [];
  List<Task> inProgress = [];
  void inProgressCreateTask(Task task){
    inProgress.add(task);
    notifyListeners();
  }
  void inProgressDeleteTask(int){
    inProgress.removeAt(int);
    notifyListeners();
  }
  void createTask(Task task){
    priorites.add(task);
    notifyListeners();
  }
  void updateTask(Task task, int index){
    priorites[index] = task;
    notifyListeners();
  }
  void deleteTask(int index){
    priorites.removeAt(index);
    notifyListeners();
  }
  int _selectedindex = 0;
  int get selectedindex => _selectedindex;

  void selectedbutton(int index){
    _selectedindex = index;
    notifyListeners();
  }
  firstPage(){
    _selectedindex = 0;
    notifyListeners();
  }
  secondPage(){
    _selectedindex = 1;
    notifyListeners();
  }
}