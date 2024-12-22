import 'package:adv_app/peresentaion/resources/routes_manger.dart';
import 'package:adv_app/peresentaion/theme_manger.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp._internal();
  int appstate = 0;

  static final MyApp _instance =
      MyApp._internal(); //singleton or single instance
  factory MyApp() => _instance;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute:Routes.splashRoute,
      theme: getApplicationTheme(),);
    
  }
}


