import 'package:fatec_pocket_landing_page/jumbotron/left_text.dart';
import 'package:fatec_pocket_landing_page/jumbotron/right_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fatec Pocket',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.openSans().fontFamily),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.of(context).size.width;
    var sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: sizeWidth,
              height: sizeHeight,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF4776e6), Color(0xFF8e54e9)]),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(child: LeftText()),
                  Expanded(child: RightImage())
                ],
              ),
            ),
            Container(
              width: sizeWidth,
              height: 300,
              child: Text('fdsafda'),
            )
          ],
        ),
      ),
    );
  }
}
