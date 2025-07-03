import 'package:flutter/material.dart';

class GridKullanimi
    extends StatelessWidget {
  const GridKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return TasarimTekar();
  }
}

class TasarimTekar
    extends StatefulWidget {
  const TasarimTekar({super.key});

  @override
  State<TasarimTekar> createState() =>
      _TasarimTekaraState();
}

class _TasarimTekaraState
    extends State<TasarimTekar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid Example"),
        backgroundColor:
            Colors.blue.shade300,
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.orange,
            width: 3,
          ),
        ),
        child: GridView.extent(
          maxCrossAxisExtent: 125,
          padding: EdgeInsets.all(10),
          crossAxisSpacing:
              5, //X ekseninde 2 Container arası Boşluk bırakır.
          mainAxisSpacing:
              40, //Alt satır arası boşluk
          children: [
            sabitGridViewEleman(
              Colors.deepPurple,
            ),
            sabitGridViewEleman(
              Colors.red,
            ),
            sabitGridViewEleman(
              Colors.yellowAccent,
            ),
            sabitGridViewEleman(
              Colors.green,
            ),
            sabitGridViewEleman(
              Colors.cyanAccent,
            ),
            sabitGridViewEleman(
              Colors.brown,
            ),
            sabitGridViewEleman(
              Colors.teal,
            ),
            sabitGridViewEleman(
              Colors.orange,
            ),
            sabitGridViewEleman(
              Colors.lime,
            ),
            sabitGridViewEleman(
              Colors.red,
            ),
            sabitGridViewEleman(
              Colors.black,
            ),
            sabitGridViewEleman(
              Colors.cyanAccent,
            ),
            sabitGridViewEleman(
              Colors.brown,
            ),
            sabitGridViewEleman(
              Colors.teal,
            ),
            sabitGridViewEleman(
              Colors.deepPurple,
            ),
            sabitGridViewEleman(
              Colors.red,
            ),
          ],
        ),
      ),
    );
  }

  Widget sabitGridViewEleman(
    Color bgColor,
  ) {
    return Container(
      height: 150,
      color: bgColor,
      alignment: Alignment.center,
      child: Text("Deneme"),
    );
  }
}
