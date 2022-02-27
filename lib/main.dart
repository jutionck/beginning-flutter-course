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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // menghilangkan banner showDebugBanner
      home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.code), // biasanya icon
            title: Text('Chat Sample'),
            centerTitle: true, // default pada Android adalah false, ios true
            actions: [
              IconButton(
                icon: Icon(Icons.refresh),
                onPressed: () {},
              )
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "$counter",
                style: TextStyle(fontSize: 50 + double.parse(counter.toString())),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        if(counter != 1) {
                          setState(() {
                            counter--;
                          });
                        }
                      },
                      child: Icon(Icons.remove)),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                      child: Icon(Icons.add))
                ],
              )
            ],
          )),
    );
  }
}
