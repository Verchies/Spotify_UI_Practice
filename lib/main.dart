import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  late var ekranBoyutu = MediaQuery.of(context);
  late var ekranGenisligi = ekranBoyutu.size.width;
  late var ekranYuksekligi = ekranBoyutu.size.height;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        unselectedItemColor: Color(0xFFb3b3b3),
        backgroundColor: Color(0xFF282828),
        selectedItemColor: Color(0xFFFFFFFF),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Ana sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Ara',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dehaze),
            label: 'Kitaplığın',
          ),
        ],
      ),
      backgroundColor: Color(0xFF121212),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 52,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 18.0, bottom: 10, left: 3),
                child: Text(
                  " Ara",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 31,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(
                      decorationColor: Colors.white,
                      backgroundColor: Colors.white),
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Sanatçılar, şarkılar veya podcast'ler",
                    hintStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 14, left: 3, bottom: 14),
                child: Text(
                  "  En çok dinlediğin türler",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              contRows(ekranGenisligi/2.2, 0xFF8d67ab, "\nPop\n\n", 0xFFe61e32, "\nRock\n\n"),
              contRows(ekranGenisligi/2.2, 0xFFba5d07, "\nHip Hop\n\n", 0xFF1e3264, "\nFolk ve\nAkustik\n"),
              const Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  "\n  Hepsine göz at",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              contRows(ekranGenisligi/2.2, 0xFFe13300, "\nPodcast'ler\n\n", 0xFF1e3264, "\nSenin için\nHazırlandı\n"),
              contRows(ekranGenisligi/2.2, 0xFF8d67ab, "\nListeler\n\n", 0xFFe8115b, "\nYeni Çıkanlar\n\n"),
            ],
          ),
        ),
      ),
    );
  }
}
class contRows extends StatelessWidget {

  final contSize;
  final contColor1;
  final contText1;
  final contColor2;
  final contText2;

  contRows(this.contSize, this.contColor1, this.contText1, this.contColor2, this.contText2);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
           margin: EdgeInsets.all(8),
           decoration: BoxDecoration(
           color: Color(contColor1),
           borderRadius: BorderRadius.circular(5),
            ),
           alignment: FractionalOffset(0.08, 0.18),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("$contText1", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
            Icon(Icons.queue_music),
            ],
           ),
           height: 95,
           width: contSize,
           ),
          Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(contColor2),
              borderRadius: BorderRadius.circular(5),
            ),
            alignment: FractionalOffset(0.08, 0.18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$contText2", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                Icon(Icons.queue_music),
              ],
            ),
            height: 95,
            width: contSize,
          ),
        ],
      ),
    );
  }
}