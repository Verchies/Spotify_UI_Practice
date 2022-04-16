import 'package:flutter/material.dart';

class listAnasayfa extends StatefulWidget {

  var listResim;
  var listIsim;
  var listResim2;
  var listIsim2;

  listAnasayfa({required this.listResim,required this.listIsim,required this.listResim2,required this.listIsim2});


  @override
  _listAnasayfaState createState() => _listAnasayfaState();
}

class _listAnasayfaState extends State<listAnasayfa> {

  late var ekranBoyutu = MediaQuery.of(context);
  late var ekranGenisligi = ekranBoyutu.size.width;
  late var ekranYuksekligi = ekranBoyutu.size.height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 70,
          width: ekranGenisligi/2.08,
          child: GestureDetector(
            onTap: (){},
            child: Card(
              color: Color(0xFF343330),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(widget.listResim),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.listIsim,
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ],
              ),
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(3.0),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 70,
          width: ekranGenisligi / 2.08,
          child: GestureDetector(
            onTap: (){},
            child: Card(
              color: Color(0xFF343330),
              child: Row(
                children: [
                  SizedBox(height: 70,child: Image.asset(widget.listResim2)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(widget.listIsim2, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ],
              ),
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(3.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
