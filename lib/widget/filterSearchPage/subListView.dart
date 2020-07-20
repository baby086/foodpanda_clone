import 'package:flutter/material.dart';

class SubListView extends StatelessWidget {

  final List list;
  const SubListView({Key key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index){
        return Container(
          color: Colors.white,
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
          child: Text(
            list[index],
            style: TextStyle(color: Colors.grey),
          ),
        );
      }, separatorBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.only(left: 20.0),
          height: 0.4,
          color: Colors.grey,
        );
      },
    );
  }
}

