import 'package:flutter/material.dart';

class GridNew extends StatelessWidget {
  const GridNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Tasarim();
  }
}

class Tasarim extends StatefulWidget {
  const Tasarim({super.key});

  @override
  State<Tasarim> createState() =>
      _TasarimState();
}

class _TasarimState
    extends State<Tasarim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Builder"),
        backgroundColor:
            Colors.brown.shade300,
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.orange,
            width: 3,
          ),
        ),
        child: GridView.builder(
          padding: EdgeInsets.all(10),
          itemCount: 8,
          gridDelegate:
              SliverGridDelegateWithMaxCrossAxisExtent(
                crossAxisSpacing: 25,

                mainAxisExtent: 20,
                maxCrossAxisExtent: 220,
              ),
          itemBuilder: (context, index) {
            return dinamikGridElemani(
              index,
            );
          },
        ),
      ),
    );
  }

  Widget dinamikGridElemani(int index) {
    return Container(
      child: Text(
        "Eleman ${index + 1}",
      ),
      color:
          Colors.teal[(((index + 1) %
                      8) +
                  1) *
              100],
    );
  }
}
