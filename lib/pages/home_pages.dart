import 'package:flutter/material.dart';
import 'package:rumus_bangun_datar/pages/persegi_pages.dart';
import 'package:rumus_bangun_datar/pages/persegi_panjang_pages.dart';
import 'package:rumus_bangun_datar/pages/segitiga_pages.dart';

var fontFamilyHome = const TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 20,
);

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Rumus Bangun Datar',
        textAlign: TextAlign.center,
        style: fontFamilyHome,
      )),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.all(15.0)),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const PersegiPage()),
                      ),
                    );
                  },
                  child: Text('Persegi', style: fontFamilyHome),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueAccent)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => const PersegiPanjangPage()),
                      ),
                    );
                  },
                  child: Text('Persegi Panjang', style: fontFamilyHome),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.lightBlue)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const SegitigaPage())));
                  },
                  child: Text('Segitiga', style: fontFamilyHome),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
