import 'package:flutter/material.dart';

/// ListTile Widget adalah sebuah widget list yang didalamnya terdapat sebuah widget lainnya
/// Widget lainnya dapat berupa leading, text dan lain lain
/// Contoh penggunaan adalah ketika kita membuat sebuah list berita yang terdiri dari image, judul, dan sub judul
/// Contoh lain adalah misalnya list chat pesan seperti wa, line dll

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
          title: Text('LIST TILE'),
          centerTitle: true, // default pada Android adalah false, ios true
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {},
            )
          ],
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text('Jution Candra Kirana'),
              subtitle: Text('Halo apa kabar teman'),
              leading: CircleAvatar(),
              trailing: Text('10:10 PM'),
            ),
            Divider(
              color: Colors.black26,
            ),
            ListTile(
              title: Text('Destry Faradila Nur\'avisa'),
              subtitle: Text(
                'Bagaiamna keadaan kamu saat ini apakah baik-baik saja ?',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text('10:10 PM'),
            ),
            Divider(
              color: Colors.black26,
            ),
            ListTile(
              title: Text('Jution Candra Kirana'),
              subtitle: Text('Halo apa kabar teman'),
              leading: CircleAvatar(),
              trailing: Text('10:10 PM'),
            ),
            Divider(
              color: Colors.black26,
            ),
            ListTile(
              title: Text('Jution Candra Kirana'),
              subtitle: Text('Halo apa kabar teman'),
              leading: CircleAvatar(),
              trailing: Text('10:10 PM'),
            )
          ],
        ),
      ),
    );
  }
}
