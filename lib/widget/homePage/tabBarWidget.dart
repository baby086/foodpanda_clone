import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  
  final TabController mTabController;
  final List tabTextList;
  const TabBarWidget({Key key, this.mTabController, this.tabTextList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TabBar(
        labelColor: Color(0xFFC82C64),
        unselectedLabelColor: Colors.black,
        controller: mTabController,
        tabs: tabTextList.map((e){
          return Tab(
             child: Text(
              e,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
            ),
          );
        }).toList()
      ),
    );
  }
}