import 'package:flutter/material.dart';

class Albumler extends StatefulWidget {
  const Albumler({Key? key}) : super(key: key);

  @override
  _AlbumlerState createState() => _AlbumlerState();
}

class _AlbumlerState extends State<Albumler> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("\t \t \tAlbümler\n(güncellenecek)",style: TextStyle(fontSize: 30,color: Colors.white),),
    );
  }
}