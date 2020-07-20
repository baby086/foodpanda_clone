import 'package:flutter/material.dart';
import 'package:food_panda_clone/model/restaurantModel.dart';

class RestaurantInfoWidget extends StatelessWidget {

  final Function function;
  final RestaurantModel restaurantModel;
  const RestaurantInfoWidget({Key key, this.restaurantModel, this.function}) : super(key: key);

  // final Function function;
  // final bool isNewJoin;
  // final bool isSpecial;
  // final bool isDeliveryType;
  // final String image;
  // final String discountMessage;
  // final String waitingTime;
  // final String name;
  // final String score;
  // final String count;
  // final String restaurantSummary;
  // final String minimumCharge;
  // final String shippingCharge;
  // final String distance;
  // const RestaurantInformationCard({Key key, this.function, this.image, this.discountMessage, this.waitingTime, this.name, this.score, this.restaurantSummary, this.minimumCharge, this.shippingCharge, this.count, this.isDeliveryType, this.distance, this.isNewJoin, this.isSpecial}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String simplifyCount;

    if(restaurantModel.count.length == 4){
      simplifyCount = restaurantModel.count.substring(0, 1) + 'K+';
    } else if (restaurantModel.count.length == 5) {
      simplifyCount = restaurantModel.count.substring(0, 1) + 'M+';
    } else if (restaurantModel.count.length == 6) {
      simplifyCount = restaurantModel.count.substring(0, 1) + 'B+';
    } else {
      simplifyCount = restaurantModel.count;
    }

    return GestureDetector(
      onTap: () => function,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // image
          Stack(
            children: <Widget>[
              Container(
                height: 140.0,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                    image: NetworkImage(restaurantModel.image),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                bottom: 5.0,
                left: 5.0,
                child: Container(
                  padding: EdgeInsets.only(right: 3.0, left: 3.0, top: 1.0, bottom: 1.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2.0)
                  ),
                  child: Text(
                    restaurantModel.waitingTime + ' 分鐘',
                    style: TextStyle(fontSize: 12.0),
                  ),
                ),
              ),
              restaurantModel.discountMessage == null ? Container() :
              Positioned(
                top: 10.0,
                child: Container(
                  padding: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 8.0, left: 8.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFD70F64),
                    borderRadius: BorderRadius.circular(2.0)
                  ),
                  child: Text(
                    restaurantModel.discountMessage,
                    style: TextStyle(fontSize: 12.0, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 5.0),
          //  first message line
          Row(
            children: <Widget>[

              restaurantModel.isSpecial == false || restaurantModel.isSpecial == null? Container() :
              Container(
                margin: EdgeInsets.only(right: 5.0),
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(2.0)
                ),
                child: Text(
                  '精選餐廳',
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),

              restaurantModel.isNewJoin == false || restaurantModel.isNewJoin == null ? Container() :
              Container(
                margin: EdgeInsets.only(right: 5.0),
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                decoration: BoxDecoration(
                  color: Color(0xFFD70F64),
                  borderRadius: BorderRadius.circular(2.0)
                ),
                child: Text(
                  '最新加盟',
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),

              Expanded(
                child: Text(
                  restaurantModel.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Icon(
                Icons.star,
                size: 13.0,
                color: Color(0xFF396AB4),
              ),
              SizedBox(width: 3.0),
              Text(
                restaurantModel.score,
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 3.0),
              Text(
                '(' + simplifyCount + ')',
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
          //  second message line
          Text(
            restaurantModel.restaurantSummary,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 12.0, color: Colors.grey),
          ),
          //  third message line
          restaurantModel.isDeliveryType == true ?
          Row(
            children: <Widget>[
              Text(
                'HK\$ ' + restaurantModel.minimumCharge,
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
              ),
              Text(
                ' 最低消費  |  ',
                style: TextStyle(fontSize: 12.0),
              ),
              Text(
                'HK\$ ' + restaurantModel.shippingCharge,
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
              ),
              Text(
                ' 運費',
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ) : 
          Row(
            children: <Widget>[
              Text(
                restaurantModel.distance + ' 米',
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
              ),
              Text(
                ' 距離',
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

}