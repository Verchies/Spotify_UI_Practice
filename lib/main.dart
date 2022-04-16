import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify_practice/NavigationPages/Anasayfa.dart';
import 'package:spotify_practice/NavigationPages/Ara.dart';
import 'package:spotify_practice/NavigationPages/Kitapligin.dart';

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
      home: const Navigation(),
    );
  }
}

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  var pageList = [Anasayfa(), Ara(), Kitapligin()];
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
        unselectedItemColor: Color(0xFFb3b3b3),
        backgroundColor: Color(0xFF282828),
        selectedItemColor: Color(0xFFFFFFFF),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, size: 20),
            label: 'Ana sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 20),
            label: 'Ara',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dehaze, size: 20),
            label: 'Kitaplığın',
          ),
        ],
      ),
      body: pageList[pageIndex],
    );
  }
}
