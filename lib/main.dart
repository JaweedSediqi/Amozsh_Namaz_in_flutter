import 'package:assingnment14/models/models/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'Splash_Screen.dart';
main()async{
 await Hive.initFlutter();
 Hive.registerAdapter(ToDoAdapter());
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home:SplashScreen()
  ));
}