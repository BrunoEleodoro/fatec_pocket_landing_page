import 'package:flutter/material.dart';

class RightImage extends StatefulWidget {
  @override
  _RightImageState createState() => _RightImageState();
}

class _RightImageState extends State<RightImage> {
  var show = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      setState(() {
        show = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(seconds: 2),
      opacity: show ? 1 : 0,
      child: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/Login.png'))),
      ),
    );
  }
}
