import 'package:flutter/material.dart';
import 'package:food_panda_clone/widget/allPage/searchEnginesWidget.dart';

class MallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          SearchEnginesWidget(
            hint: '查看商品及種類',
            disableFilter: true,
          ),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 50,
            itemBuilder: (BuildContext context, int index){
              return Container(
                height: 200.0,
                margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 0.0),
                padding: EdgeInsets.all(15.0),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 140.0,
                            child: Image.network(
                              'https://pic.pimg.tw/tkbputaoblog/1459222502-964708691.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 20.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '無印良品',
                                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '\$\$\$, 生活百貨',
                                  style: TextStyle(fontSize: 12.0),
                                ),
                                Wrap(
                                  children: <Widget>[
                                    Container(
                                      color: Color(0xFFD70F64),
                                      margin: EdgeInsets.only(right: 5.0, bottom: 5.0, top: 5.0),
                                      padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 3.0, bottom: 3.0),
                                      child: Text(
                                        '\$50 OFF \$300',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      color: Color(0xFFD70F64),
                                      margin: EdgeInsets.only(right: 5.0),
                                      padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 3.0, bottom: 3.0),
                                      child: Text(
                                        'FREE DELIVERY',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                      '將於重開 10:00',
                      style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
            }, separatorBuilder: (BuildContext context, int index) { 
              return SizedBox(height: 15.0);
            },
          )
        ],
      ),
    );
  }
}