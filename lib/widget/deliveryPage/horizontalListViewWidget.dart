import 'package:flutter/material.dart';
import 'package:food_panda_clone/model/restaurantModel.dart';
import 'package:food_panda_clone/widget/allPage/restaurantInfoWidget.dart';

class HorizontalListViewWidget extends StatelessWidget {

  final List<RestaurantModel> restaurantList;
  const HorizontalListViewWidget({Key key, this.restaurantList}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index){
          return Container(
            width: 280,
            padding: index == 0 ? EdgeInsets.only(right: 15.0, left: 15.0) : EdgeInsets.only(right: 15.0),
            child: RestaurantInfoWidget(restaurantModel: restaurantList[0]),
          );
        }
      ),
    );
  }
}