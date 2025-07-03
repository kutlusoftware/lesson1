import 'package:flutter/material.dart';

class FadeinKullanimi
    extends StatelessWidget {
  const FadeinKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Placeholder(),
        ),
      ),
    );
  }
}

class one extends StatelessWidget {
  const one({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      child: FadeInImage.assetNetwork(
        placeholder:
            "default_yükleniyor_tarzında_resim",
        image: "resmin_kendisinin_yolu",
      ),
    );
  }
}


// İnternet açılırken yavaşlık varsa farklı bir widget oluşturulur.

//