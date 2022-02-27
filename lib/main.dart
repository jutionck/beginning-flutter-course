import 'package:flutter/material.dart';

/// Image Widget adalah sebuah widget untuk menampilkan sebuah image atau gambar
/// Image yang didukung juga banyak seperti jpg, jpeg, png, svg, webp, dll
/// Jenis Provider Image bisa menggunakan assets (pada project kita buat folder image)
/// Network pemanggilan image melalui url secara random, contoh pada web https://picsum.photos/200/300
/// File -> sumber image berasal dari luar project atau di Device
/// Memory -> sumber image berasal dari memory
/// Kecepatan Provider : memory - assets - file - network
/// Jangan lupa untuk mendaftarkan file image pada pubspec.yaml

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Color> myColor = [
    Colors.red,
    Colors.amber,
    Colors.lightBlue,
    Colors.green
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // menghilangkan banner showDebugBanner
      home: Scaffold(
        appBar: AppBar(
          // sebetulnya appBar ini membutuhkan PreferredSizeWidget, tetapi karena AppBar sudah extends jadi tidak perlu lagi
          leading: Icon(Icons.code), // biasanya icon
          title: Text('IMAGE WIDGET'),
          centerTitle: true, // default pada Android adalah false, ios true
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {},
            )
          ],
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.amber,
            // child: Image(
            //   fit: BoxFit.cover, // terdiri dari fill, filHeight, fillWidth, cover dll
            //   image: AssetImage("images/image_1.jpeg"),
            //   // image: NetworkImage("https://picsum.photos/200/300"),
            // ),
            child: Image.asset(
              "images/image_2.jpeg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
