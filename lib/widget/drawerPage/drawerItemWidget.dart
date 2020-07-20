import 'package:flutter/material.dart';

class DrawerItemWidget extends StatelessWidget {

  final String imageIconPatch;
  final String text;

  const DrawerItemWidget({Key key, this.imageIconPatch, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40.0),
      child: Row(
        children: <Widget>[
          ImageIcon(
            AssetImage(imageIconPatch),
            color: Color(0xFFD70F64),
          ),
          SizedBox(width: 15.0),
          Text(
            text,
            style: TextStyle(fontSize: 13.0, color: Color(0xFF5F5F5F)),
          )
        ],
      ),
    );
  }
}