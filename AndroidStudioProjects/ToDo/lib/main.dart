import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/model/to_do_services.dart';
import 'widgets /bottombar.dart';
import 'package:provider/provider.dart';
import 'state_manager/state_manager.dart';

void main()async{
  await Hive.initFlutter();
  Hive.registerAdapter(TaskAdapter());
  await Hive.openBox('To_Do');
  runApp(MultiProvider(providers: [ChangeNotifierProvider(create: (context)=>StateManager())], child: MaterialApp(
    initialRoute: bottombar.id,
    routes: {
      bottombar.id:(context)=> const bottombar(),
    },
    debugShowCheckedModeBanner: false,)));
}
