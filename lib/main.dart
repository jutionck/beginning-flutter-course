import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

/// Extract Widget sebenenrnya kita membuat sebuah class baru kemudian class tersebut bisa kita panggil berulang-ulang
/// Contoh disino kita membuat sebuah widget dari ListTile
/// Kita akan membuat data dummy, install dev pada pubspec.yaml : faker: ^1.3.0

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var faker = new Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // menghilangkan banner showDebugBanner
      home: Scaffold(
          appBar: AppBar(
            // sebetulnya appBar ini membutuhkan PreferredSizeWidget, tetapi karena AppBar sudah extends jadi tidak perlu lagi
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
          body: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return ChatItem(
                imageUrl: "https://picsum.photos/id/$index/200/300",
                title: faker.person.name(),
                subTitle: faker.lorem.sentence(),
                trailing: faker.date.time(),
              );
            },
          )),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final String trailing;

  const ChatItem(
      {required this.imageUrl,
      required this.title,
      required this.subTitle,
      required this.trailing});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: Text(trailing),
    );
  }
}
