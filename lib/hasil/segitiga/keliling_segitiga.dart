import 'package:flutter/material.dart';
import 'package:rumus_bangun_datar/pages/segitiga_pages.dart';

var fontFamilyHome = const TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 20,
);

class KelilingSegitiga extends StatelessWidget {
  final int a;
  final int b;
  final int c;
  const KelilingSegitiga(
      {Key? key, required this.a, required this.b, required this.c})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int keliling = (a + b + c);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hasil Keliling Segitiga",
          style: fontFamilyHome,
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "Nilai a = $a cm",
                style: fontFamilyHome,
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "Nilai b = $b cm",
                style: fontFamilyHome,
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "Nilai c = $c cm",
                style: fontFamilyHome,
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(
                "Hasil Keliling Segitiga = $keliling cm",
                style: fontFamilyHome,
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Kembali',
                style: fontFamilyHome,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
