import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TasarimTekrar(),
    );
  }
}

class TasarimTekrar extends StatefulWidget {
  const TasarimTekrar({super.key});

  @override
  State<TasarimTekrar> createState() => _TasarimTekrarState();
}

class _TasarimTekrarState extends State<TasarimTekrar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasarım Tekrar"),
        backgroundColor: Colors.blue.shade300,
      ),
      body: Row(
        children: [
          Container(
            color: Colors.amber,
            child: Text("merhaba"),
            decoration: BoxDecoration(border: Border()),
            //alignment: Alignment.center, // Aligment tüm ekranı kaplar.
          ),
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            alignment: Alignment.center, // Sadece bu container'ı kapsar.
            child: Text("Merhaba"),
          ),
        ],
      ),
    );
  }
}
