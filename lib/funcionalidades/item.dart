import 'package:flutter/material.dart';

class SingleItem extends StatelessWidget {
  var title;
  var subtitle;
  var icon;

  SingleItem({this.title, this.subtitle, this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: CircleAvatar(
        child: Icon(
          icon,
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF8e54e9),
      ),
    ));
  }
}
