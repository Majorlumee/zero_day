import 'package:hive/hive.dart';
part 'to_do_services.g.dart';
@HiveType(typeId: 0)
class Task{
  @HiveField(0)
  String title;
  @HiveField(1)
  String body;
  Task({required this.title, required this.body})
;}

@HiveType(typeId: 1)
class Task1{
  @HiveField(1)
  String title;
  @HiveField(2)
  String body;
  Task1({required this.title, required this.body});
}

