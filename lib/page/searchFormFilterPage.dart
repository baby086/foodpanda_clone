import 'package:flutter/material.dart';
import 'package:food_panda_clone/widget/filterSearchPage/filtertitleWidget.dart';
import 'package:food_panda_clone/widget/filterSearchPage/subListView.dart';

class SearchFormFilterPage extends StatelessWidget {

  List _discountList = [
    '免運費',
    '折扣優惠'
  ];

  List _dishesList = [
    '港式',
    '湯粉麵',
    '中式',
    '日式',
    '飲品',
    '意粉',
    '西式',
    '意大利菜',
    '薄餅',
    '越南菜',
    '台灣菜',
    '點心',
    '壽司',
    '甜品',
    '快餐',
    '健康食品',
    '泰國菜',
    '海鮮',
    '美式',
    '三文治',
    '韓式',
    '麵包及蛋糕',
    '歐洲菜',
    '漢堡',
    '潮州菜',
    'Cantonese',
    '東南亞菜',
  ];

  List _foodTypeList = [
    '飯類',
    '晚餐',
    '早餐',
    '麵類',
    '最新',
    '湯類',
    'Local Favs',
    '20% Off Or More Discount',
    '荼餐廳',
    '10% Off Discount',
    '午餐',
    '回贈獎賞',
    '快餐',
    '沙律',
    '零食',
    '意粉',
    '宵夜類',
    '咖喱',
    '廣東菜',
    '飲料',
    '火辣精選',
    '有可口可樂點夾都GUR',
    '涼茶',
    '上海菜',
    '川菜',
    '茶'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.close, color: Color(0xFFD70F64)),
        ),
        title: Text(
          '篩選',
          style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
        )
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          FilterTitleWidget(title: '價格範圍'),
          Container(
            height: 60.0,
            color: Colors.white,
            child: Center(child: Text('data'),),
          ),
          FilterTitleWidget(title: '優惠'),
          SubListView(list: _discountList),
          FilterTitleWidget(title: '菜式'),
          SubListView(list: _dishesList),
          FilterTitleWidget(title: '食品類型'),
          SubListView(list: _foodTypeList),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 30.0),
        padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0, bottom: 20.0),
        height: 80.0,
        color: Colors.white,
        child: Container(
          color: Color(0xFFD70F64),
          child: Center(
            child: Text(
              '套用',
              style: TextStyle(color: Colors.white),
            )
          )
        ),
      ),
    );
  }
}