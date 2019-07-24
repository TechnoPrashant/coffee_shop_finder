import 'package:flutter/material.dart';
import 'package:coffee_shop_finder/utils/ColorUtils.dart';
import 'package:coffee_shop_finder/utils/StringUtils.dart';
import 'package:coffee_shop_finder/Register.dart';
import 'package:coffee_shop_finder/Home.dart';
import 'package:coffee_shop_finder/utils/StyleUtils.dart';

class Login extends StatelessWidget {
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
          StringUtils().strLogin,
          style: TextStyle(color: ColorsUtils().textColor),
        ),
      ),
      backgroundColor: Colors.white,
      body: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 40, left: 40),
              child: Text(
                StringUtils().loginWelcome,
                style: TextStyle(
                    color: ColorsUtils().textColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 32),
              ),
            ),
            Padding(
                padding: StyleUtils().registerPadding(),
                child: TextField(
                  cursorColor: ColorsUtils().themeDark,
                  maxLines: 1,
                  keyboardAppearance: Brightness.light,
                  decoration: StyleUtils().registerTextField(
                      StringUtils().strHintEmail, StringUtils().strLabelEmail),
                )),
            Padding(
                padding: StyleUtils().registerPadding(),
                child: TextField(
                  cursorColor: ColorsUtils().themeDark,
                  maxLines: 1,
                  keyboardAppearance: Brightness.light,
                  decoration: StyleUtils().registerTextField(
                      StringUtils().strHintPassword,
                      StringUtils().strLabelPassword),
                )),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(right: 40, top: 20),
                child: Text(
                  StringUtils().strForgetPassword,
                  style: TextStyle(
                      color: ColorsUtils().themeDark,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 40, right: 40),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Home();
                      }));
                    },
                    color: ColorsUtils().themeDark,
                    padding: EdgeInsets.only(
                        left: 50, right: 50, top: 14, bottom: 14),
                    child: Text(
                      StringUtils().strLogin,
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadiusDirectional.all(Radius.circular(30))),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  StringUtils().strNoAccount,
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 4),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Register();
                    }));
                  },
                  child: Text(
                    StringUtils().strRegister,
                    style: TextStyle(
                        color: ColorsUtils().themeDark,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
