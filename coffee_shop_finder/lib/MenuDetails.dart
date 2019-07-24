import 'package:coffee_shop_finder/utils/ColorUtils.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop_finder/utils/StringUtils.dart';
import 'package:coffee_shop_finder/utils/StyleUtils.dart';

class MenuDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MenuDetailsScreen(),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: ColorsUtils().textColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          /**/
        ),
        backgroundColor: Colors.white,
        title: Text(
          StringUtils().strPreferences,
          style: TextStyle(color: ColorsUtils().textColor),
        ),
      ),
    );
  }
}

class MenuDetailsScreen extends StatefulWidget {
  @override
  _MenuDetailsScreenState createState() => _MenuDetailsScreenState();
}

class _MenuDetailsScreenState extends State<MenuDetailsScreen> {
  int cartCount = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Stack(
              alignment: FractionalOffset.center,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: Image.asset(
                    StringUtils().details_bg,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Image.asset(
                  StringUtils().macciato,
                ),
              ],
            ),
            Padding(
              padding: StyleUtils().menuDetailsRowPadding(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Text(
                      'Macciato\n36 EGP',
                      style: StyleUtils().menuDetailsRowText(),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      '$cartCount',
                      style: StyleUtils().menuDetailsRowText(),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (cartCount == 0) {
                            cartCount = 0;
                          } else {
                            cartCount--;
                          }
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 50,
                        child: Text(
                          '-',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: ColorsUtils().textColorDark,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30)),
                            border: Border.all(
                                color: ColorsUtils().textColorDark, width: 1)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          cartCount++;
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 50,
                        child: Text(
                          '+',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: ColorsUtils().textColorDark,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                            border: Border.all(
                                color: ColorsUtils().textColorDark, width: 1)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            StyleUtils().itemBorder(),
            Padding(
              padding: StyleUtils().menuDetailsRowPadding(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      StringUtils().strSize,
                      style: StyleUtils().menuDetailsRowText(),
                    ),
                    flex: 4,
                  ),
                  Expanded(flex: 1, child: Image.asset(StringUtils().size1)),
                  Expanded(flex: 1, child: Image.asset(StringUtils().size2)),
                  Expanded(flex: 1, child: Image.asset(StringUtils().size3)),
                ],
              ),
            ),
            StyleUtils().itemBorder(),
            Padding(
              padding: StyleUtils().menuDetailsRowPadding(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      StringUtils().strsugar,
                      style: StyleUtils().menuDetailsRowText(),
                    ),
                    flex: 4,
                  ),
                  Expanded(flex: 1, child: Image.asset(StringUtils().sugar1)),
                  Expanded(flex: 1, child: Image.asset(StringUtils().sugar2)),
                  Expanded(flex: 1, child: Image.asset(StringUtils().sugar3)),
                  Expanded(flex: 1, child: Image.asset(StringUtils().sugar4)),
                ],
              ),
            ),
            StyleUtils().itemBorder(),
            Padding(
              padding: StyleUtils().menuDetailsRowPadding(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      StringUtils().stradditions,
                      style: StyleUtils().menuDetailsRowText(),
                    ),
                    flex: 4,
                  ),
                  Expanded(flex: 1, child: Image.asset(StringUtils().add1)),
                  Expanded(flex: 1, child: Image.asset(StringUtils().add2)),
                ],
              ),
            ),
            StyleUtils().itemBorder(),
            Padding(
              padding: StyleUtils().menuDetailsRowPadding(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    StringUtils().strtotal,
                    style: TextStyle(
                        color: ColorsUtils().themeDark,
                        fontWeight: FontWeight.w400,
                        fontSize: 30),
                  ),
                  Text(
                    '42 EGP',
                    style: TextStyle(
                        color: ColorsUtils().textColorDark,
                        fontWeight: FontWeight.w400,
                        fontSize: 26),
                  ),
                ],
              ),
            ),
            Container(
              margin: StyleUtils().menuDetailsRowPadding(),
              width: double.maxFinite,
              child: FlatButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 16),
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      StringUtils().straddtocart,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                color: ColorsUtils().themeDark,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadiusDirectional.all(Radius.circular(30))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
