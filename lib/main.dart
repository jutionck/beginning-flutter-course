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
              autocorrect: true, // auto correct word dalam bahasa inggris
              autofocus: true,
              enableInteractiveSelection: true, // untuk copy paste
              enabled: true,
              // obscureText: false, // hidden word ketika mengetik e.g password
              // obscuringCharacter: "#", // memberikan custom hidden
              keyboardType: TextInputType.phone, // type input
            ),
          ),
        ),
      ),
    );
  }
}


