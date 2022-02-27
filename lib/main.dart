import 'package:flutter/material.dart';

/// Colum Widget digunakan utnuk menyusun widget-widget ke bawah atau secara vertikal
/// Row Widget digunakan untuk menyusun widget-widget ke samping atau horizontal
/// Stack Widget digunakan untuk menyusun widget-widget secara tumpuk/stack
/// Column dan Row mempunyai properti mainAxis dan Cross Axis

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // List<Color> listColor = [Colors.red, Colors.amber, Colors.lightBlue];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // menghilangkan banner showDebugBanner
      home: Scaffold(
        appBar: AppBar( // sebetulnya appBar ini membutuhkan PreferredSizeWidget, tetapi karena AppBar sudah extends jadi tidak perlu lagi
          leading: Icon(Icons.code), // biasanya icon
          title: Text('COLUMN ROW STACK'),
          centerTitle: true, // default pada Android adalah false, ios true
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {},
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.amber,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.lightBlue,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.green,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.deepOrange,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.pink,
                )
              ],
            ),
            Stack(
              children: [
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.black12,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.orangeAccent,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.lightBlue,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.deepPurple,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
