import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_panda_clone/widget/drawerPage/drawerItemWidget.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30.0, top: 80.0, bottom: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'User Name',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),

          SizedBox(height: 30.0),

          DrawerItemWidget(
            imageIconPatch: 'assests/ic_orders.png',
            text: '我的訂單',
          ),

          DrawerItemWidget(
            imageIconPatch: 'assests/ic_member.png',
            text: '個人檔案',
          ),

          DrawerItemWidget(
            imageIconPatch: 'assests/ic_location.png',
            text: '我的地址',
          ),

          DrawerItemWidget(
            imageIconPatch: 'assests/ic_credit_card.png',
            text: '我的付款方式',
          ),

          DrawerItemWidget(
            imageIconPatch: 'assests/ic_vouchers.png',
            text: '我的優惠券',
          ),

          DrawerItemWidget(
            imageIconPatch: 'assests/ic_helpcenter.png',
            text: '客服中心',
          ),

          DrawerItemWidget(
            imageIconPatch: 'assests/ic_gift.png',
            text: '邀請好友',
          ),

          DrawerItemWidget(
            imageIconPatch: 'assests/ic_more.png',
            text: '更多',
          ),

          Spacer(),

          DrawerItemWidget(
            imageIconPatch: 'assests/ic_logout.png',
            text: '登出',
          ),

        ],
      ),
    );
  }
}