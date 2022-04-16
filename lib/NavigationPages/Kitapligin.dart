import 'package:flutter/material.dart';
import 'package:spotify_practice/TabPages/Albumler.dart';
import 'package:spotify_practice/TabPages/CalmaListeleri.dart';
import 'package:spotify_practice/TabPages/Sanatcilar.dart';

class Kitapligin extends StatefulWidget {
  const Kitapligin({Key? key}) : super(key: key);

  @override
  _KitapliginState createState() => _KitapliginState();
}

class _KitapliginState extends State<Kitapligin> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFF121212),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: AppBar(
            backgroundColor: Color(0xFF121212),
            title: Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child:
                  Text("Müzik\t  Podcast'ler", style: TextStyle(fontSize: 32)),
            ),
            bottom: TabBar(
              tabs: [
                Tab(text: "Çalma Listeleri"),
                Tab(text: "Sanatçılar"),
                Tab(text: "Albümler"),
              ],
              //seçilenin alt çizgisi
              indicatorColor: Colors.green,
              labelColor: Colors.white,
            ),
          ),
        ),
        body: TabBarView(
          children: [
            calmaListeleri(),
            Sanatcilar(),
            Albumler(),
          ],
        ),
      ),
    );
  }
}
