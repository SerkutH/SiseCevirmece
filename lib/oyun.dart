import 'package:flutter/material.dart';
import 'dart:math';

class oyun extends StatefulWidget {
  final List kisiler;

  oyun({required this.kisiler});

  @override
  _oyunState createState() => _oyunState();
}

int yanitIndex = 0;
int asd = 0;

class _oyunState extends State<oyun> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Eşleş")),
      body: Center(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: ListTile(
                  title: Text("Şişeyi Çevir"),
                  onTap: () {
                    setState(() {
                      yanitIndex = Random().nextInt(widget.kisiler.length);
                      asd = Random().nextInt(widget.kisiler.length);
                    });
                  }),
            ),
            Container(width: 150, margin: EdgeInsets.only(bottom: 20)),
            Text("SORAN", textScaleFactor: 3),
            Container(width: 150, margin: EdgeInsets.only(bottom: 100)),
            Text(widget.kisiler[yanitIndex] ?? 'nope'),
            Container(width: 150, margin: EdgeInsets.only(bottom: 150)),
            Text("CEVAPLAYAN", textScaleFactor: 3),
            Container(width: 150, margin: EdgeInsets.only(bottom: 100)),
            Text(widget.kisiler[asd] ?? 'nope'),
          ],
        ),
      ),
    );
  }
}
