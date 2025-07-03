import 'package:flutter/material.dart';
import 'package:lesson1/7.grid_builder.dart';
import 'package:lesson1/8.appbar_silver_kullanimi.dart';
import 'package:lesson1/news.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppBarSliver(),
    );
  }
}

class TasarimTekrar
    extends StatefulWidget {
  const TasarimTekrar({super.key});

  @override
  State<TasarimTekrar> createState() =>
      _TasarimTekrarState();
}

class _TasarimTekrarState
    extends State<TasarimTekrar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasarım Tekrar"),
        backgroundColor:
            Colors.blue.shade300,
      ),
      body: Row(
        children: [
          Container(
            color: Colors.amber,
            child: Text("merhaba"),
            //alignment: Alignment.center, // Aligment tüm ekranı kaplar.
          ),
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            alignment: Alignment
                .center, // Sadece bu container'ı kapsar.
            child: Text("Merhaba"),
          ),
          SizedBox(
            height: 20,
            child: Text("ali"),
          ),
        ],
      ),
    );
  }
}

/*

Material App uyg. route yani kök dizine bağlayan widgettir. Bu yuzden uyg. genel bilgilerini içinde barındırır.
Material en önemli parametresi theme keyworkudür. Bu parametre themeData sınıfını alır. Bunun içerisine arka plan rengi, özel tasarım yazı fontları, buton tasarımları, appBar ile ilgili tasarımlar ve bir çok şeyi(araştır) 



*/
