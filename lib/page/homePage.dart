import 'package:flutter/material.dart';
import 'package:food_panda_clone/widget/homePage/noticeBoardWidget.dart';
import 'package:food_panda_clone/widget/homePage/tabBarWidget.dart';
import 'package:food_panda_clone/widget/homePage/tabViewWidget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDraweOpen = false;

  TabController mTabController;
  String appBarTitle = '外送到';
  String noticeBoardText = '新客戶 ...more';
  bool noticeBoardExpanded = false;
  List tabTextList = ['外送', '自取', '生活百貨'];

  @override
  void initState() {
    mTabController = new TabController(length: 3, vsync: this);
    mTabController.addListener(() => _tabOnclick());
    super.initState();
  }

  @override
  void dispose() {
    mTabController.dispose();
    super.dispose();
  }
  
  void _drawerOpen(){
    setState(() {
      xOffset = 320.0;
      yOffset = 150.0;
      scaleFactor = 0.7;
      isDraweOpen = true;
    });
  }

  void _drawerClose(){
    setState(() {
      xOffset = 0;
      yOffset = 0;
      scaleFactor = 1;
      isDraweOpen = false;
    });
  }

  void _cartFunction(){
    print('object');
  }
  
  void _noticeBoardOnclick(){
    setState(() {
      if(noticeBoardExpanded == true){
        noticeBoardExpanded = false;
        noticeBoardText = '新客戶5次免運費優惠\n首次訂單優惠碼 : JULYNEW\n其餘優惠碼將發送到你的foodpanda帳戶註冊之\n電郵地址   less';
      } else {
        noticeBoardExpanded = true;
        noticeBoardText = '新客戶 ...more';  
      }
    });
  }

  void _tabOnclick(){
    setState(() {
      mTabController.index == 1 ? appBarTitle = '自取於' : appBarTitle = '外送到';
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _drawerClose(),
      child: AnimatedContainer(
        transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scaleFactor),
        duration: Duration(milliseconds: 200),
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0.5,
                title: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () => _drawerOpen(),
                      child: SizedBox(
                        height: 25.0,
                        child: ImageIcon(
                          AssetImage('assests/ic_member.png'),
                          color: Color(0xFFD70F64),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              appBarTitle + ' : ',
                              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '現在位置',
                              style: TextStyle(color: Color(0xFFC82C64), fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => _cartFunction(),
                      child: SizedBox(
                        height: 25.0,
                        child: ImageIcon(
                          AssetImage('assests/ic_cart.png'),
                          color: Color(0xFFD70F64),
                        ),
                      ),
                    ),
                  ],
                )
              ),
              body: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () => _noticeBoardOnclick(),
                    child: NoticeBoardWidget(content: noticeBoardText)
                  ),
                  TabBarWidget(
                    mTabController: mTabController,
                    tabTextList: tabTextList,
                  ),
                  TabViewWidget(mTabController: mTabController)
                ],
              ),
            ),
            isDraweOpen == true ? Container(color: Colors.transparent) : Container()
          ],
        ),
      ),
    );
  }
}