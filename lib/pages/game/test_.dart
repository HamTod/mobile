import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LongPage extends StatefulWidget {
  const LongPage({Key? key}) : super(key: key);

  @override
  _LongPageState createState() => _LongPageState();
}

class _LongPageState extends State<LongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:AppBar(
      //   title: Text('Hello'),
      // ),
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              Image.asset('assets/images/123.png'),
              //width:  240.0, //160 = 1 inch
              Text('Guess The Number',
                style: GoogleFonts.kanit(fontSize: 22.0),)
            ],
          ),
        ),
      ),
    );
  }
}
