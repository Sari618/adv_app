import 'package:adv_app/peresentaion/theme_manger.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp._internal();
  int appstate = 0;

  static final MyApp _instance =
      MyApp._internal(); //singleton or single instance
  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Test extends StatelessWidget {
  const Test({super.key});

  void updateAppState() {
    MyApp().appstate = 11;
  }
  void getAppState(){
    print(MyApp().appstate);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: getApplicationTheme(),);
  }
}


class person {

  
}