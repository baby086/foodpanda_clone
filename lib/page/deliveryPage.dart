import 'package:flutter/material.dart';
import 'package:food_panda_clone/model/restaurantModel.dart';
import 'package:food_panda_clone/widget/deliveryPage/deliveryTitleWidget.dart';
import 'package:food_panda_clone/widget/deliveryPage/horizontalListViewWidget.dart';
import 'package:food_panda_clone/widget/allPage/restaurantInfoWidget.dart';
import 'package:food_panda_clone/widget/allPage/searchEnginesWidget.dart';

class DeliveryPage extends StatelessWidget {

  final List _promotionBannerList = [
    'assests/banner1.png', 
    'assests/banner2.png', 
    'assests/banner3.png'
  ];

  final List<RestaurantModel> _tempRestaurantList = new List<RestaurantModel>();

  @override
  Widget build(BuildContext context) {

    _tempRestaurantList.add(
      RestaurantModel(
        true,
        false,
        true, 
        'https://images.deliveryhero.io/image/fd-hk/LH/x1td-listing.jpg',
        '滿\$80即享9折', 
        '40', 
        '翠林餐廳 Greenland Restaurant', 
        '4.3', 
        '3122', 
        '\$\$, 港式, 10% Off Discount, 飯類, 早餐, 回贈獎償',
        '40', 
        '20',
        ''
      )
    );

    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[

          SearchEnginesWidget(
            hint: 'Find something you like',
            disableFilter: false,
          ),

          SizedBox(
            height: 160.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: _promotionBannerList.length,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  width: 135.0,
                  margin: index == 0 ? EdgeInsets.only(left: 15.0, right: 15.0) : EdgeInsets.only(right: 15.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFC82C64),
                    borderRadius: BorderRadius.circular(4.0)
                  ),
                  child: Image.asset(
                    _promotionBannerList[index]
                  )
                );
              }
            ),
          ),

          DeliveryTitleWidget(content: '限時優惠'),

          HorizontalListViewWidget(restaurantList: _tempRestaurantList),

          DeliveryTitleWidget(content: '最新餐廳'),

          HorizontalListViewWidget(restaurantList: _tempRestaurantList),

          DeliveryTitleWidget(content: '附近熱點'),

          HorizontalListViewWidget(restaurantList: _tempRestaurantList),

          DeliveryTitleWidget(content: '所有餐廳'),

          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: ListView.builder(
              itemCount: 20,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index){
                return RestaurantInfoWidget(restaurantModel: _tempRestaurantList[0]);
              }
            ),
          )

        ],
      ),
      
    );
  }
}