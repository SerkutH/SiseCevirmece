import 'oyun.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SiseCevirmece",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  const Iskele({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Şişe Çevirmece"),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {

  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  TextEditingController t1 = TextEditingController();
  List KisiListesi = [];

  kisiekle() {
    setState(() {
      KisiListesi.add(t1.text);
      t1.clear();
    });
  }

  kisisil() {
    setState(() {
      KisiListesi.remove(t1.text);
    });
  }

  hepsinisil() {
    setState(() {
      KisiListesi.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Flexible(
          child: ListView.builder(
            itemCount: KisiListesi.length,
            itemBuilder: (context, indeksNumarasi) =>
                ListTile(title: Text(KisiListesi[indeksNumarasi])),
          ),
        ),
        TextField(controller: t1),
        ElevatedButton(onPressed: kisiekle, child: Text("Ekle")),
        ElevatedButton(onPressed: hepsinisil, child: Text("hepsinisil")),
        ElevatedButton(onPressed: kisisil, child: Text("Çıkar")),
        ElevatedButton(child: Text("Başla"), onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => oyun(kisiler: KisiListesi,)),);
        },),
      ]),
    );
  }
}
