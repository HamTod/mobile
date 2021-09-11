import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: ThaiFontViewer(),
    );
  }
}

class ThaiFontViewer extends StatefulWidget {
  const ThaiFontViewer({Key? key}) : super(key: key);

  @override
  _ThaiFontViewerState createState() => _ThaiFontViewerState();
}

class _ThaiFontViewerState extends State<ThaiFontViewer> {
  String currentFont = "Charm";
  List<String> nameFont = [
    "Pattaya",
    "Sriracha",
    "Kanit",
    "Chakra Petch",
    "Mitr",
    "Taviraj",
    "Itim",
    "Mali",
    "Pridi",
    "Niramit",
    "Bai Jamjuree"
  ];

  Widget _buildButton(String font) {
    return Padding(
      padding: const EdgeInsets.all(3.0),

      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
        onPressed: () => _handleSetFont(font),
        child: Text("$font"),
      ),
    );
  }

  _handleSetFont(String font) {
    setState(() {
      currentFont = font;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("THAI FONT VIEWER"),
          backgroundColor: Colors.deepPurple,
          ),
        body: SafeArea(
            child: Container(
              decoration: const BoxDecoration(
                image: const DecorationImage(
                  image: const AssetImage("assets/images/bg_btf.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: Center(
                          child: Text("กอดโลกในความฝันเอาไว้จนใจเจ็บ",
                              style: GoogleFonts.getFont(currentFont, fontSize: 75,color: Colors.white),
                              textAlign: TextAlign.center,
                          ))),
                  Column(children: [
                    Text("Font: " + "$currentFont",style: TextStyle(fontWeight: FontWeight.bold),),
                    Card(
                      elevation: 5.0,
                      child: Wrap(
                          alignment: WrapAlignment.center,
                          children: nameFont.map((e) => _buildButton(e)).toList()),
                          color: Colors.white70,
                    )
                  ])
                ],
              ),
        ),
      ),
    );
  }
}