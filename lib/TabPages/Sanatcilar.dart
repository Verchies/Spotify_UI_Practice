import 'package:flutter/material.dart';

class Sanatcilar extends StatefulWidget {
  const Sanatcilar({Key? key}) : super(key: key);

  @override
  _SanatcilarState createState() => _SanatcilarState();
}

class _SanatcilarState extends State<Sanatcilar> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("\t \t \tSanatçılar\n(güncellenecek)",style: TextStyle(fontSize: 30,color: Colors.white),),
    );
  }
}
