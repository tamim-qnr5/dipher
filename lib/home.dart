import 'package:dipher/screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final ciphers = [
  'CAESAR CIPHER',
  'VIGENERE CIPHER',
];
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.transparent,
      elevation: 0,
      // actions: [
      //   IconButton(
      //       icon: Icon(Icons.info),
      //       onPressed: () {
      //         Navigator.push(context,
      //             MaterialPageRoute(builder: (context) => About()));
      //       })
      // ],
      title: Text('CIPHERS', style: TextStyle(color: Colors.black)),
      centerTitle: true,
    ),
        body: ListView.builder(
            itemCount: ciphers.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.015,
                  left: MediaQuery.of(context).size.height * 0.015,
                  right: MediaQuery.of(context).size.height * 0.015,
                ),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Screen(title: ciphers[index])));
                  },
                  leading: Icon(Icons.lock, color: Colors.black),
                  title: Text(ciphers[index]),
                ),
              );
            })
    );
  }
}
