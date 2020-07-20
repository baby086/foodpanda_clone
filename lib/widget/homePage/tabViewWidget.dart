import 'package:flutter/material.dart';
import 'package:food_panda_clone/page/deliveryPage.dart';
import 'package:food_panda_clone/page/mallPage.dart';

class TabViewWidget extends StatelessWidget {
  final TabController mTabController;
  const TabViewWidget({Key key, this.mTabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Expanded(
      child: TabBarView(
        controller: mTabController,
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          DeliveryPage(),
          DeliveryPage(),
          MallPage(),
        ],
      ),
    );
  }
}
