import 'package:flutter/material.dart';

var fontFamilyHome = const TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 20.0,
);

class LuasPersegi extends StatelessWidget {
  final int sisi;
  const LuasPersegi({Key? key, required this.sisi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int luas = sisi.toInt() * sisi.toInt();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hasil Luas Persegi",
          style: fontFamilyHome,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(15.0)),
            Container(
              margin: const EdgeInsets.all(5.0),
              child: Text(
                "Sisi Persegi =  $sisi cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(15.0)),
            Container(
              margin: const EdgeInsets.all(5.0),
              child: Text(
                "Hasil Luas Persegi = $luas cm",
                style: fontFamilyHome,
              ),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.yellowAccent)),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Kembali",
                  style: fontFamilyHome,
                ))
          ],
        ),
      ),
    );
  }
}
