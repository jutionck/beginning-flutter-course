import 'package:flutter/material.dart';

/// Latihan Stack dan Align Widget

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack and Align"),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.black12,
                            ))
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.black12,
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                            ))
                      ],
                    ))
              ],
            ),
            ListView(
              children: [
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                            "Ini adalah text yang ada di lapisan tengah dari Stack",
                            style: TextStyle(fontSize: 40))),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                            "Ini adalah text yang ada di lapisan tengah dari Stack",
                            style: TextStyle(fontSize: 40))),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                            "Ini adalah text yang ada di lapisan tengah dari Stack",
                            style: TextStyle(fontSize: 40))),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                            "Ini adalah text yang ada di lapisan tengah dari Stack",
                            style: TextStyle(fontSize: 40))),
                    Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                            "Ini adalah text yang ada di lapisan tengah dari Stack",
                            style: TextStyle(fontSize: 40))),
                  ],
                )
              ],
            ),
            // untuk memposisikan widget
            Align(
              alignment: Alignment(0, 0.90),
              child: FloatingActionButton(
                tooltip: "Ini Tombol",
                child: Icon(Icons.add),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
