import 'package:flutter/material.dart';

class AppBarKullanimi
    extends StatelessWidget {
  const AppBarKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return OrnekTwo();
  }
}

class OrnekOne extends StatelessWidget {
  const OrnekOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gelişmiş AppBar"),
        backgroundColor:
            Colors.blue[700],
        foregroundColor: Colors.white,
        elevation: 4.0,
        centerTitle: true,
        toolbarHeight: 80.0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue[700]!,
                Colors.blue[500]!,
              ],
              begin: Alignment.topLeft,
              end:
                  Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Container(),
    );
  }
}

class OrnekTwo extends StatelessWidget {
  const OrnekTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("SliverAppBar"),
          expandedHeight: 200.0,
          floating: true,
          pinned: true,
          snap: true,
          backgroundColor: Colors.green,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              "Genişleyen Başlık",
            ),
            background: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.green[800]!,
                    Colors.green[400]!,
                  ],
                ),
              ),
            ),
          ),
        ),
        SliverList(
          delegate:
              SliverChildListDelegate(
                [],
              ),
        ),
      ],
    );
  }
}
