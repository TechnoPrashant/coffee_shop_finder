import 'package:coffee_shop_finder/utils/ColorUtils.dart';
import 'package:coffee_shop_finder/utils/StringUtils.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop_finder/MenuDetails.dart';
import 'package:coffee_shop_finder/utils/StyleUtils.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          StringUtils().strMenu,
          style: TextStyle(color: ColorsUtils().textColor),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8.0,
        elevation: 10.0,
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            InkWell(
              onTap: () {},
              child: Padding(
                padding: StyleUtils().menuBottomMenu(),
                child: ImageIcon(
                  AssetImage(StringUtils().bm1),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: StyleUtils().menuBottomMenu(),
                child: ImageIcon(
                  AssetImage(StringUtils().bm2),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: StyleUtils().menuBottomMenu(),
                child: ImageIcon(
                  AssetImage(StringUtils().bm3),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: StyleUtils().menuBottomMenu(),
                child: ImageIcon(
                  AssetImage(StringUtils().bm4),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: MenuScreen(),
    );
  }
}

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, position) {
            return GestureDetector(
              child: _ListItem(position),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MenuDetails();
                }));
              },
            );
          }),
    );
  }
}

Widget _ListItem(int position) {
  var imageIcon, menuName;
  switch (position) {
    case 0:
      imageIcon = StringUtils().menu1;
      menuName = StringUtils().strmenu1;
      break;
    case 1:
      imageIcon = StringUtils().menu2;
      menuName = StringUtils().strmenu2;
      break;
    case 2:
      imageIcon = StringUtils().menu3;
      menuName = StringUtils().strmenu3;
      break;
    case 3:
      imageIcon = StringUtils().menu4;
      menuName = StringUtils().strmenu4;
      break;
    case 4:
      imageIcon = StringUtils().menu5;
      menuName = StringUtils().strmenu5;
      break;
  }
  return Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset(
                  imageIcon,
                ),
                Text(
                  menuName,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: ColorsUtils().textColorDark,
                      fontWeight: FontWeight.w500,
                      fontSize: 26),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: ColorsUtils().themeDark,
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25, bottom: 25),
            color: ColorsUtils().themeLight,
            width: double.maxFinite,
            height: 0.5,
          )
        ],
      ));
}
