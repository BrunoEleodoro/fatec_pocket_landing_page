import 'package:flutter/material.dart';

class LeftText extends StatefulWidget {
  @override
  _LeftTextState createState() => _LeftTextState();
}

class _LeftTextState extends State<LeftText> {
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
          child: Padding(
            padding: const EdgeInsets.only(left: 38.0, top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SelectableText('Fatec Pocket',
                    enableInteractiveSelection: true,
                    style: TextStyle(
                        fontSize: 75,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                SizedBox(
                  height: 30,
                ),
                Text('Leve a Fatec no seu bolso.',
                    style: TextStyle(fontSize: 25, color: Colors.white)),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 200,
                  child: MaterialButton(
                    height: 40,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    onPressed: () {},
                    color: Colors.purple,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.file_download,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Download',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    // icon: Icon(Icons.file_download),
                    // label: Text('Download'),
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: <Widget>[
                //     Expanded(
                //       flex: 3,
                //       child:
                //     ),
                //   ],
                // )
              ],
            ),
          ),
        ));
  }
}
