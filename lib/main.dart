import 'package:flutter/material.dart';

/// Latihan Stack dan Align Widget

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
            child: TextField(
              autofocus: false,
              showCursor: true, // memberikan decoration pada cursor input, default true
              cursorColor: Colors.amber,
              // cursorWidth: 10,
              // cursorHeight: 25,
              // cursorRadius: Radius.circular(20),
              textAlign: TextAlign.start,
              // memberikan efek setiap kata huruf besar ada banyak pilihan, seperti words, characters dll
              textCapitalization: TextCapitalization.none,
              style: TextStyle(
                color: Colors.red
              ),
              decoration: InputDecoration( // memberikan decoration icon diluar field
                icon: Icon(Icons.person),
                border: OutlineInputBorder(),
                // prefixIcon: Icon(Icons.phone), // memberikan icon di dalam field (start)
                  suffixIcon: IconButton( // memberikan icon di dalam filed (end)
                   icon: Icon(Icons.remove_red_eye),
                   onPressed: () {},
                  ),
                // prefixText: "Hp", // memberikan field name
                hintText: "Masukkan nama anda",
                labelText: "Full Name" // memberikan label field
              ),
            ),
          ),
        ),
      ),
    );
  }
}


