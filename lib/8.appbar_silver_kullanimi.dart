import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarSliver
    extends StatelessWidget {
  const AppBarSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            surfaceTintColor:
                Colors.white,
            floating: true,
            pinned: true,
            snap: true,

            /*title: Text(
              "Sliver AppBar",
            ),*/
            backgroundColor:
                Colors.brown.shade100,
            expandedHeight: 300,
            foregroundColor:
                Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "SliverAppBar",
              ),
              background: Image.network(
                "https://ichef.bbci.co.uk/ace/ws/800/cpsprodpb/16FA9/production/_92712149_gettyimages-480164327.jpg.webp",
                fit: BoxFit.cover,
              ),
            ),
            systemOverlayStyle:
                SystemUiOverlayStyle(
                  statusBarColor: Colors
                      .brown
                      .shade100, // İstediğin düz renk
                  statusBarIconBrightness:
                      Brightness
                          .dark, // İkon rengi (açık/dark tema için)
                ),
          ),
          sliverMet(),
          SliverPadding(
            padding:
                EdgeInsetsGeometry.symmetric(
                  vertical: 30,
                ),
            sliver: SliverGrid(
              delegate:
                  SliverChildListDelegate([
                    sabitGridViewEleman(
                      Colors.red,
                    ),
                    sabitGridViewEleman(
                      Colors.blue,
                    ),
                    sabitGridViewEleman(
                      Colors.yellow,
                    ),
                    sabitGridViewEleman(
                      Colors.green,
                    ),
                  ]),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
            ),
          ),
        ],
      ),
    );
  }

  Widget sabitGridViewEleman(
    Color bgColor,
  ) {
    return Container(
      height: 150,
      color: bgColor,
      child: Text("Deneme"),
    );
  }
}

SliverList sliverMet() {
  return SliverList(
    delegate: SliverChildBuilderDelegate(
      childCount: 20,
      (context, index) {
        return Padding(
          padding:
              const EdgeInsets.symmetric(
                horizontal: 10,
              ),
          child: Container(
            height: 75,
            child: Text(
              "Eleman: ${index + 1}",
            ),
            color: rastgeleRenkUret(),
          ),
        );
      },
    ),
  );
}

Color rastgeleRenkUret() {
  return Color.fromARGB(
    Random().nextInt(255),
    Random().nextInt(255),
    Random().nextInt(255),
    Random().nextInt(255),
  );
}

SizedBox sabitEleman() {
  return SizedBox(
    height: 90,
    child: Row(
      children: [
        Expanded(
          child: Card(
            color:
                Colors.orange.shade100,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(
                    10,
                  ),
            ),
            child: Align(
              alignment:
                  Alignment.center,
              child: ListTile(
                leading: Icon(
                  Icons.wb_sunny,
                  size: 36,
                  color: Colors.white,
                ),
                title: Text("28 °C"),
                subtitle: Text(
                  "Ankara",
                ),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
