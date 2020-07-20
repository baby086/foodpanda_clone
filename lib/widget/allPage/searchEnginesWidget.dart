import 'package:flutter/material.dart';
import 'package:food_panda_clone/page/searchFormFilterPage.dart';
import 'package:food_panda_clone/page/searchFormTextPage.dart';

class SearchEnginesWidget extends StatelessWidget {

  final String hint;
  final bool disableFilter;
  const SearchEnginesWidget({Key key, this.hint, this.disableFilter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SearchFormTextPage())),
      child: Container(
        margin: EdgeInsets.all(15.0),
        padding: EdgeInsets.all(10.0),
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.search,
                color: Color(0xFFC82C64),
              ),
            ),
            Expanded(
              child: Text(
                hint,
                style: TextStyle(color: Colors.grey),
              )
            ),
            disableFilter == true ? Container() :
            GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SearchFormFilterPage())),
              child: SizedBox(
                height: 20.0,
                child: ImageIcon(
                  AssetImage('assests/ic_filter.png'),
                  color: Color(0xFFC82C64),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}