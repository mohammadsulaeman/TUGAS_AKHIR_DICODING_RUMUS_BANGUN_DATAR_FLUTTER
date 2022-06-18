import 'package:flutter/material.dart';
import 'package:rumus_bangun_datar/hasil/persegi/keliling_persegi.dart';
import 'package:rumus_bangun_datar/hasil/persegi/luas_persegi.dart';

class PersegiPage extends StatefulWidget {
  const PersegiPage({Key? key}) : super(key: key);

  @override
  State<PersegiPage> createState() => _PersegiPageState();
}

class _PersegiPageState extends State<PersegiPage> {
  var fontFamilyHome = const TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 20.0,
  );
  int sisi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Persegi",
          style: fontFamilyHome,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(5.0),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset("images/persegi.png"),
                    ),
                    Text(
                      "Persegi atau Bujur sangkar adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk yang sama panjang dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku.",
                      style: fontFamilyHome,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Berikut Rumus Luas dan Keliling Persegi",
                      style: fontFamilyHome,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset("images/luasdankelilingpersegi.png"),
                    )
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(5.0)),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: Text(
                  "Silakan input kan sebuah angka untuk menghitung luas dan keliling dari persegi",
                  style: fontFamilyHome,
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(padding: EdgeInsets.all(5.0)),
              Container(
                margin: const EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Masukkan Nilai Sisi Persegi",
                      labelText: "Masukkan Nilai Sisi Persegi",
                      hintStyle: fontFamilyHome,
                      suffix: const Text('cm'),
                      labelStyle: fontFamilyHome),
                  onChanged: (text) {
                    setState(() {
                      sisi = int.parse(text);
                    });
                  },
                  keyboardType: TextInputType.number,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.cyanAccent)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) =>
                                LuasPersegi(sisi: sisi.toInt()))),
                      );
                    },
                    child: Text(
                      "Luas Persegi",
                      style: fontFamilyHome,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amberAccent)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) =>
                                KelilingPersegi(sisi: sisi.toInt()))),
                      );
                    },
                    child: Text(
                      "Keliling Persegi",
                      style: fontFamilyHome,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
