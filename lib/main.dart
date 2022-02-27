import 'package:flutter/material.dart';

/// AppBar merupakan sebuah widget yang berada di top position UI
/// AppBar terdiri dari : Leading, Title, Actions, Flexible Space dan Bottom

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // menghilangkan banner showDebugBanner
      home: Scaffold(
        backgroundColor: Colors.amber[600],
        appBar: AppBar( // sebetulnya appBar ini membutuhkan PreferredSizeWidget, tetapi karena AppBar sudah extends jadi tidak perlu lagi
          leading: Icon(Icons.code), // biasanya icon
          leadingWidth: 50, // mengatur lebar leading
          title: Text('APPBAR'),
          titleSpacing: 10, // mengatur spaci judul ke leading
          centerTitle: false, // default pada Android adalah false, ios true
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {},
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(200), child: Container(),
          ),
          flexibleSpace: Text('Flexible Text'),
        ),
        body: Center(
          child: Text('Hello'),
        ),
      ),
    );
  }
}
