import 'package:flutter/material.dart';

/// TextWidget merupakan sebuah widget untuk mengatur tulisan atau text
/// TextWidget terdiri dari banyak properti : maxLine, overflow, textStyle dll

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // menghilangkan banner showDebugBanner
      home: Scaffold(
        appBar: AppBar( // sebetulnya appBar ini membutuhkan PreferredSizeWidget, tetapi karena AppBar sudah extends jadi tidak perlu lagi
          leading: Icon(Icons.code), // biasanya icon
          title: Text('TEXT WIDGET'),
          centerTitle: true, // default pada Android adalah false, ios true
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {},
            )
          ],
        ),
        body: Center(
          child: Text(
              'Hello Hola Halo Hai Hai Hello ',
            // maxLines: 2, // mengatur maksimal beris pada text
            textAlign: TextAlign.right,
            overflow: TextOverflow.ellipsis, // membuat text di akhir menjadi ...
            style: TextStyle(
              backgroundColor: Colors.amber, // mengatur background font
              color: Colors.black, // mengatur warna font
              fontSize: 40, // mengatur ukuran font
              fontWeight: FontWeight.normal, // mengatur ketebalan font
              letterSpacing: 2, // mengatur jarak antar huruf
              fontFamily: 'Fredoka', // ini bisa cari di https://fonts.google.com/ -> update pada pubspec.yaml
              decoration: TextDecoration.underline,
              // decorationStyle: TextDecorationStyle.dotted,
              decorationColor: Colors.red
            ),
          ),
        ),
      ),
    );
  }
}
