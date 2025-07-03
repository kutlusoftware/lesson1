import 'package:flutter/material.dart';

class AppbarKull
    extends StatelessWidget {
  const AppbarKull({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Başlık'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 4,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        leading: Icon(Icons.menu),
        bottom: PreferredSize(
          preferredSize:
              Size.fromHeight(40),
          child: Text('Alt kısım'),
        ),
      ),
    );
  }
}
