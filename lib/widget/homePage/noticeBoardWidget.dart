import 'package:flutter/material.dart';

class NoticeBoardWidget extends StatelessWidget {

  final String content;
  const NoticeBoardWidget({Key key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFEF8EA),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            width: 3.0,
            color: Color(0xFFF9C769),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
              child: Text(content),
            )
          ),
          SizedBox(
            height: 50.0,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Image.asset('assests/ic_notice.png'),
            ),
          )
        ],
      ),
    );
  }
}