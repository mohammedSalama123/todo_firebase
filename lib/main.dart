import 'package:flutter/material.dart';
import 'package:todo_triner/screens/home/home.dart';
import 'package:todo_triner/screens/settings/settings.dart';
import 'package:todo_triner/them.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyThemeData.lightTheme,
     routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        SettingsTab.routName:(context)=>SettingsTab(),
     },
      initialRoute: HomeScreen.routeName,
    );
  }
}

