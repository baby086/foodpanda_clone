import 'package:flutter/material.dart';

class SearchFormTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: <Widget>[
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.keyboard_arrow_left,
                size: 30.0,
                color: Color(0xFFD70F64),
              ),
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.all(0.0),
                  isDense: true,
                  hintText: 'Find something you like',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 15.0)
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 25.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Text(
              'Popular searches',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            )
          ],
        ),
      ),
    );
  }
}