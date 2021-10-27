import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const A());
}

class A extends StatelessWidget {
  const A({Key? key}) : super(key: key);

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

  var totalHarcama = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
         child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [

        ]
        ),
        ),
     );
  }
}