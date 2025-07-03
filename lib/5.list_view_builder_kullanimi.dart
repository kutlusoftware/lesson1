import 'package:flutter/material.dart';
import 'package:lesson1/model/ogrenci.dart';

class ListViewBuilderKullanimi
    extends StatefulWidget {
  const ListViewBuilderKullanimi({
    super.key,
  });

  @override
  State<ListViewBuilderKullanimi>
  createState() =>
      _ListViewBuilderKullanimiState();
}

class _ListViewBuilderKullanimiState
    extends
        State<
          ListViewBuilderKullanimi
        > {
  List<Ogrenci>
  tumogrenciler = List.generate(
    5000,
    (index) => Ogrenci(
      id: index + 1,
      isim: "öğrenci adı: ${index + 1}",
      soyisim:
          "öğrenci soyisim: ${index + 1}",
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.separated(
          itemCount:
              tumogrenciler.length,
          itemBuilder: (context, index) {
            Ogrenci ogr =
                tumogrenciler[index];
            return verileriSabitEleman(
              ogr,
            );
          },

          separatorBuilder:
              (context, index) {
                return (index + 1) %
                            4 ==
                        0
                    ? Divider(
                        color: Colors
                            .green,
                        thickness: 3,
                      )
                    : Container();
              },
        ),
      ),
    );
  }

  SizedBox verileriSabitEleman(
    Ogrenci ogr,
  ) {
    return SizedBox(
      height: 90,
      child: Row(
        children: [
          Expanded(
            child: Card(
              color:
                  Colors.pink.shade300,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadiusGeometry.circular(
                      10,
                    ),
              ),
              child: Align(
                alignment:
                    Alignment.center,
                child: ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    child: Text(
                      ogr.id.toString(),
                    ),
                  ),
                  title: Text(ogr.isim),
                  subtitle: Text(
                    ogr.soyisim,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
