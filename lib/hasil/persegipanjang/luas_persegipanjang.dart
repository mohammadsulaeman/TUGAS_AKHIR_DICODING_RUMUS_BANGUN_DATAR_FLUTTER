import 'package:flutter/material.dart';

var fontFamilyHome = const TextStyle(
  fontFamily: 'Montserrat',
  fontSize: 20,
);

class LuasPersegiPanjang extends StatelessWidget {
  final int panjang;
  final int lebar;
  const LuasPersegiPanjang(
      {Key? key, required this.panjang, required this.lebar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int luasbangun = panjang.toInt() * lebar.toInt();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hasil Luas Persegi Panjang",
          style: fontFamilyHome,
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text("Panjang = $panjang cm"),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text("Lebar = $lebar cm"),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text("Hasil Luas Persegi Panjang = $luasbangun cm"),
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Kembali',
                  style: fontFamilyHome,
                  textAlign: TextAlign.center,
                ))
          ],
        ),
      ),
    );
  }
}
