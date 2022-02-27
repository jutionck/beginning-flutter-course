import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // menghilangkan banner showDebugBanner
      home: Scaffold(
        backgroundColor: Colors.amber[600],
        appBar: AppBar(
          title: Text('Widget Dasar'),
        ),
        body: Center(
          child: Text('Hello'),
        ),
      ),
    );
  }
}
