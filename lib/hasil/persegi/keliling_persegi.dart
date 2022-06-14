import 'package:flutter/material.dart';

var fontFamilyHome = const TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 20,
);

class KelilingPersegi extends StatelessWidget {
  final int sisi;
  const KelilingPersegi({Key? key, required this.sisi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int kelilingpersegi = 4 * (sisi.toInt());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Keliling Persegi",
          style: fontFamilyHome,
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "Sisi Persegi = $sisi cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "Hasil Keliling = $kelilingpersegi cm",
                style: fontFamilyHome,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            ElevatedButton(
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
