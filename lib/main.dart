import 'package:flutter/material.dart';

/// Stateful widget, adanya perubahan widget
/// Perubahan itu di tandai dengan fungsi setState

void main() => runApp(MyApp());

// convert dari stateless -> statefull (wind: alt + enter. mac: option + enter)
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1;
  List<Widget> widgets = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:
            false, // menghilangkan banner showDebugBanner
        home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.code), // biasanya icon
            title: Text('Counter Sample'),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          widgets.add(
                            Text("Data ke " + counter.toString(), style: TextStyle(fontSize: 30),),
                          );
                          counter++;
                        });
                      },
                      child: Text("Tambah Data")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          widgets.removeLast();
                          counter--;
                        });
                      },
                      child: Text("Hapus Data"))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: widgets,
              )
            ],
          ),
        ));
  }
}
