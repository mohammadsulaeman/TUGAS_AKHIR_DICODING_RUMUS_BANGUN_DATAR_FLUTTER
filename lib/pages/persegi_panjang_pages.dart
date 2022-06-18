import 'package:flutter/material.dart';
import 'package:rumus_bangun_datar/hasil/persegipanjang/keliling_persegipanjang.dart';
import 'package:rumus_bangun_datar/hasil/persegipanjang/luas_persegipanjang.dart';

class PersegiPanjangPage extends StatefulWidget {
  const PersegiPanjangPage({Key? key}) : super(key: key);

  @override
  State<PersegiPanjangPage> createState() => _PersegiPanjangPageState();
}

class _PersegiPanjangPageState extends State<PersegiPanjangPage> {
  var fontFamilyHome =
      const TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  int panjang = 0;
  int lebar = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Persegi Panjang",
          style: fontFamilyHome,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(10.0)),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset("images/persegipanjang.png"),
            ),
            Text(
              "Persegi Panjang adalah bangun datar dua dimensi yang dibentuk oleh dua pasang sisi yang masing-masing sama panjang dan sejajar dengan pasangannya, dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku.",
              style: fontFamilyHome,
              textAlign: TextAlign.center,
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Text(
              "Berikut Rumus Luas dan Keliling Persegi Panjang",
              style: fontFamilyHome,
              textAlign: TextAlign.center,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset("images/luasdankelilingpersegipanjang.png"),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "Silakan Masukkan Nilai Panjang dan Lebar Persegi Panjang",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: fontFamilyHome,
                  hintText: 'Masukkan Nilai Panjang',
                  suffix: const Text("CM"),
                ),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  setState(() {
                    panjang = int.parse(text);
                  });
                },
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Nilai Lebar',
                  hintStyle: fontFamilyHome,
                  suffix: const Text("CM"),
                ),
                keyboardType: TextInputType.number,
                onChanged: (text) {
                  setState(() {
                    lebar = int.parse(text);
                  });
                },
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => LuasPersegiPanjang(
                              panjang: panjang, lebar: lebar))),
                    );
                  },
                  child: Text(
                    "Luas",
                    style: fontFamilyHome,
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.redAccent)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => KelilingPersegiPanjang(
                              panjang: panjang, lebar: lebar))),
                    );
                  },
                  child: Text(
                    "Keliling",
                    style: fontFamilyHome,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
