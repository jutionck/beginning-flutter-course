import 'package:flutter/material.dart';

/// Latihan Stack dan Align Widget

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // DefaultTabController myController = DefaultTabController(length: 3, child: null);
  final List<Tab> myTab = [
    Tab(text: "Tab 1", icon: Icon(Icons.add_a_photo)),
    Tab(text: "Tab 2", icon: Icon(Icons.add_task)),
    Tab(text: "Tab 3",icon: Icon(Icons.add_alarm)),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController( // ada dua argument: length dan child
        initialIndex: 1, // memberikan initial tab yang aktif ketika aplikasi di jalankan
        length: myTab.length,
        child: Scaffold(
        appBar: AppBar(
          title: Text("Enigma Apps"),
          centerTitle: true,
          bottom:  TabBar(
            // indicatorColor: Colors.black, // memberikan warna active tab
            tabs: myTab,
            indicator: BoxDecoration( // modifikasi tab
              color: Colors.amber,
              border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 2
                )
              )
            ),
            labelColor: Colors.black, // memberikan warna label yang aktif
            unselectedLabelColor: Colors.white, // memberikan warna label yang tidak arktif
            labelStyle: TextStyle( // memberikan style pada label yang aktif
              fontWeight: FontWeight.bold
            ),
            unselectedLabelStyle: TextStyle( // memberikan style pada label yang tidak aktif
              fontWeight: FontWeight.normal
            ),
          ),
        ),
          body: TabBarView( // untuk mengatur tab view sesuai dengan tab diatas yang aktif
            children: [
              Center(
                child: Text(
                  "Tab 1",
                  style: TextStyle(
                    fontSize: 40
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Tab 2",
                  style: TextStyle(
                      fontSize: 40
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Tab 3",
                  style: TextStyle(
                      fontSize: 40
                  ),
                ),
              )
            ],
          ),
      ),
      ),
    );
  }
}

