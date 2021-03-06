import 'package:flutter/material.dart';
import 'package:spotify_practice/TabPages/Class/anasayfalistClass.dart';

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  late var ekranBoyutu = MediaQuery.of(context);
  late var ekranGenisligi = ekranBoyutu.size.width;
  late var ekranYuksekligi = ekranBoyutu.size.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: ekranGenisligi,
                    height: 720,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                          Color(0xFF5e5843),
                          Color(0xFF121212).withOpacity(0.95)], stops: [0.03, 0.24],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            tileMode: TileMode.repeated)),
                    child: CustomScrollView(
                      slivers: [
                        SliverAppBar(
                          actions: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 5, right: 5, top: 30),
                              child: Icon(Icons.flash_on_outlined),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 5, right: 12, top: 30),
                              child: Icon(Icons.settings),
                            )
                          ],
                          backgroundColor: Colors.transparent,
                          title: Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Text(
                              '??yi Ak??amlar',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: listAnasayfa(
                        listResim: "assets/nowadays.png",
                        listIsim: "Nowadays",
                        listResim2: "assets/bestonesList.png",
                        listIsim2: "Best Ones Ever"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 170.0),
                    child: listAnasayfa(
                        listResim: "assets/listeninbiri.png",
                        listIsim: "Ger??ekten ??zg??n\nbu g??zler",
                        listResim2: "assets/k??rac.png",
                        listIsim2: "K??ra??"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 240.0),
                    child: listAnasayfa(
                        listResim: "assets/bayhan.png",
                        listIsim: "Bayhan m?? be..",
                        listResim2: "assets/somelist.png",
                        listIsim2: "????"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 350.0,left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Image.asset("assets/2020.png"),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("#SPOTIFYWRAPPED",style: TextStyle(color: Color(0xFF999999),fontSize: 10),),
                            Text("2020'ye Geri D??n??p Bak",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 425.0,bottom: 8),
                            child: SizedBox(height: 180,child: Image.asset("assets/encokdinledik.png")),
                          ),
                          Text(" Bu y??l en sevdi??in ??ark??lar??n\n hepsini bir araya toplad??k.",style: TextStyle(color: Colors.grey,fontSize: 13),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 425.0,right: 25,bottom: 8),
                            child: SizedBox(height: 180,child: Image.asset("assets/hitsarkilar.png",)),
                          ),
                          Text(" 2020'den ka????rmak\n istemeyece??ini d??????nd??...",style: TextStyle(color: Colors.grey,fontSize: 13),)
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 680.0,left: 12),
                    child: Text("Benzersiz se??imlerin",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
