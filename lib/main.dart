import 'package:flutter/material.dart';
import 'package:training_assignment_1/pages/home.dart';
import 'package:training_assignment_1/pages/login.dart';
import 'package:training_assignment_1/pages/profile_page.dart';
import 'package:training_assignment_1/widgets/loading.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Loading(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        '/1': (BuildContext context) => Login(),
        '/2': (BuildContext context) => Home(),
        '/3': (BuildContext context) => Profile(),
      },
    );
  }
}