import 'package:flutter/material.dart';

/// ListView Widget digunakan untuk menyusun widget-widget yang tidak diketahui batasannya
/// ListView dapat di scroll
/// Scroll dapat di atur tergantung mau ke arah mana vertikal maupun horizontal
/// ListView.builder mempunyai sebuah properti itemCount dan itemBuilder
/// ListView.separated mempunya properti tambahan separatedBuilder berfungsi untuk memberikan batasan antar widget

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Color> myColor = [Colors.red, Colors.amber, Colors.lightBlue, Colors.green];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // menghilangkan banner showDebugBanner
      home: Scaffold(
        appBar: AppBar(
          // sebetulnya appBar ini membutuhkan PreferredSizeWidget, tetapi karena AppBar sudah extends jadi tidak perlu lagi
          leading: Icon(Icons.code), // biasanya icon
          title: Text('LIST VIEW'),
          centerTitle: true, // default pada Android adalah false, ios true
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {},
            )
          ],
        ),
        body: ListView.builder(
          itemCount: myColor.length,
          itemBuilder: (contex, index) {
            return Container(
              width: 300,
              height: 300,
              color: myColor[index],
            );
          },
        ),
      ),
    );
  }
}
