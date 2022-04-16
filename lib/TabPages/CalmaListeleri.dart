import 'package:flutter/material.dart';
import 'package:spotify_practice/TabPages/Class/calmalisteleriClass.dart';

class calmaListeleri extends StatefulWidget {
  const calmaListeleri({Key? key}) : super(key: key);

  @override
  _calmaListeleriState createState() => _calmaListeleriState();
}

class _calmaListeleriState extends State<calmaListeleri> {
  Future<List<muzikOzellik>> sarkilariGetir() async {
    var sarkiList = <muzikOzellik>[];

    var l1 =
        muzikOzellik("assets/listolustur.png", "Çalma Listesi Oluştur ", "");
    var l2 =
        muzikOzellik("assets/begenilen.png", "Beğenilen Şarkılar", "49 şarkı");
    var l3 = muzikOzellik(
        "assets/bestonesList.png", "Best Ones Ever", "oluşturan Verchies");
    var l4 =
        muzikOzellik("assets/nowadays.png", "Nowadays", "oluşturan Verchies");
    var l5 = muzikOzellik("assets/listeninbiri.png", "Gerçekten ügün bu gözler",
        "oluşturan Melis");
    var l6 = muzikOzellik(
        "assets/ucuncuyeniler.png", "Üçüncü Yeniler", "oluşturan Verchies");
    var l7 = muzikOzellik(
        "assets/radio.png", "Radyo'dan Beğenilenler", "oluşturan Verchies");

    sarkiList.add(l1);
    sarkiList.add(l2);
    sarkiList.add(l3);
    sarkiList.add(l4);
    sarkiList.add(l5);
    sarkiList.add(l6);
    sarkiList.add(l7);

    return sarkiList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: FutureBuilder<List<muzikOzellik>>(
        future: sarkilariGetir(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var sarkiList = snapshot.data!;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 9 / 1.75,
              ),
              itemCount: sarkiList.length,
              itemBuilder: (context, indeks) {
                var sarki = sarkiList[indeks];
                return GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                    child: Card(
                      color: Color(0xFF121212),
                      child: SizedBox(
                        height: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("${sarki.muzikResim}"),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${sarki.muzikIsim}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "${sarki.listDetay}",
                                    style: TextStyle(
                                        color: Color(0xFF9f9f9f),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return Center();
          }
        },
      ),
    );
  }
}
