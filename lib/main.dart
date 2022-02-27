import 'package:flutter/material.dart';
import 'package:flutter_course/screens/app_form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Enigma Apps"),
        ),
        body: AppForm(),
      ),
    );
  }
}
