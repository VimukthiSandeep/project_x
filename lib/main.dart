import 'package:flutter/material.dart';
import 'package:project_x/screen/welcome_page.dart';
import 'screen/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  welcomeScreen(),
      title: 'PTLR',
      theme: ThemeData(primarySwatch: Colors.blue),

    );
  }
}
