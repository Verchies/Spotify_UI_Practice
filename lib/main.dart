import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify_practice/A.dart';

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

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {

    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class _AnasayfaState extends State<Anasayfa> {

  late var ekranBoyutu = MediaQuery.of(context);
  late var ekranGenisligi = ekranBoyutu.size.width;
  late var ekranYuksekligi = ekranBoyutu.size.height;

  Color color = HexColor("#121212"); //background color
  Color color1 = HexColor("#1DB954");
  Color color2 = HexColor("#FFFFFF");
  Color color3 = HexColor("#000000");
  Color color4 = HexColor("#8d67ab"); //pop purple
  Color color5 = HexColor("#e61e32"); //rock red
  Color color6 = HexColor("#ba5d07"); //hip hop
  Color color7 = HexColor("#1e3264"); //folk akustik
  Color color8 = HexColor("#e13300"); //podcast
  Color color9 = HexColor("#1e3264"); //senin için
  Color color10 = HexColor("#8d67ab"); //listeler
  Color color11 = HexColor("#e8115b"); //yeni çıkanlar
  Color color12 = HexColor("#282828"); //navigation bar color
  Color color13 = HexColor("#b3b3b3"); //unselected color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        unselectedItemColor: color13,
        backgroundColor: color12,
        selectedItemColor: color2,
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
      backgroundColor: color,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              const SizedBox(
                height: 52,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 18.0,bottom: 10,left: 3),
                child: Text(" Ara",style: TextStyle(color: Colors.white,fontSize: 31,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(
                      decorationColor: Colors.white,
                      backgroundColor: Colors.white
                  ),
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    prefixIcon: Icon(Icons.search,color: Colors.black,),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Sanatçılar, şarkılar veya podcast'ler",
                    hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(6))),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 14,left: 3,bottom: 14),
                child: Text("  En çok dinlediğin türler",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              ),
              GestureDetector(
                onTap: (){
                  print("Pop veya Rock seçildi.");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                  [
                    Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: color4,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      alignment: const FractionalOffset(0.08,0.18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        const [
                          Text("\nPop\n\n",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          Icon(Icons.queue_music),
                        ],
                      ),
                      height: 95,
                      width: ekranGenisligi/2.2,
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: color5,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      alignment: const FractionalOffset(0.08,0.18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        const [
                          Text("\nRock\n\n",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          Icon(Icons.queue_music),
                        ],
                      ),
                      height: 95,
                      width: ekranGenisligi/2.2,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  print("Hip Hop veya Akustik seçildi.");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                  [
                    Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: color6,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      alignment: const FractionalOffset(0.08,0.18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        const [
                          Text("\nHip Hop\n\n",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          Icon(Icons.queue_music),
                        ],
                      ),
                      height: 95,
                      width: ekranGenisligi/2.2,
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: color7,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      alignment: const FractionalOffset(0.08,0.18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        const [
                          Text("\nFolk ve\nAkustik\n",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          Icon(Icons.queue_music),
                        ],
                      ),
                      height: 95,
                      width: ekranGenisligi/2.2,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text("\n  Hepsine göz at",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => A()));
                  print("Podcast'ler veya Senin için Hazırlandı seçildi.");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                  [
                    Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: color8,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      alignment: const FractionalOffset(0.08,0.18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        const [
                          Text("\nPodcast'ler\n\n",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          Icon(Icons.queue_music),
                        ],
                      ),
                      height: 95,
                      width: ekranGenisligi/2.2,
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: color9,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      alignment: const FractionalOffset(0.08,0.18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        const [
                          Text("\nSenin için\nHazırlandı\n",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          Icon(Icons.queue_music),
                        ],
                      ),
                      height: 95,
                      width: ekranGenisligi/2.2,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  print("Listeler veya Yeni Çıkanlar seçildi.");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:
                  [
                    Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: color10,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      alignment: const FractionalOffset(0.08,0.18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        const [
                          Text("\nListeler\n\n",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          Icon(Icons.queue_music),
                        ],
                      ),
                      height: 95,
                      width: ekranGenisligi/2.2,
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: color11,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      alignment: const FractionalOffset(0.08,0.18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        const [
                          Text("\nYeni Çıkanlar\n\n",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          Icon(Icons.queue_music),
                        ],
                      ),
                      height: 95,
                      width: ekranGenisligi/2.2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
