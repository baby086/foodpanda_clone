import 'package:flutter/material.dart';

class DeliveryTitleWidget extends StatelessWidget {
  
  final String content;
  const DeliveryTitleWidget({Key key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Text(
        content,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),        
      ),
    );
  }
}