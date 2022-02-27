import 'package:flutter/material.dart';

/// Latihan Stack dan Align Widget

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController myController = TextEditingController();
  String result = "Hasil Input";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Enigma Apps"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  decoration: InputDecoration(
                      // memberikan decoration icon diluar field
                      icon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                      hintText: "Masukkan nama anda",
                      labelText: "Full Name" // memberikan label field
                      ),
                  controller: myController,
                  onChanged: (value) {
                    print("onchange");
                  },
                  onSubmitted: (value) {
                    print(value);
                    setState(() {
                      result = value;
                    });
                  },
                  onEditingComplete: () {
                    print("Sukses Edit");
                  },
                ),
                Text(result)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
