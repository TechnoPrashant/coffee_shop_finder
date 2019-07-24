import 'package:flutter/material.dart';
import 'package:coffee_shop_finder/utils/StringUtils.dart';
import 'package:coffee_shop_finder/utils/ColorUtils.dart';
import 'package:coffee_shop_finder/utils/StyleUtils.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
          StringUtils().strRegister,
          style: TextStyle(color: ColorsUtils().textColor),
        ),
      ),
      backgroundColor: Colors.white,
      body: RegisterScreen(),
    );
  }
}

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 40, left: 40),
                child: Text(
                  StringUtils().strRegsiterWlcome,
                  style: TextStyle(
                      color: ColorsUtils().textColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 26),
                ),
              ),
              Padding(
                  padding: StyleUtils().registerPadding(),
                  child: TextField(
                      cursorColor: ColorsUtils().themeDark,
                      maxLines: 1,
                      keyboardAppearance: Brightness.light,
                      decoration: StyleUtils().registerTextField(
                          StringUtils().strHintFullName,
                          StringUtils().strLabelFullName))),
              Padding(
                  padding: StyleUtils().registerPadding(),
                  child: TextField(
                    cursorColor: ColorsUtils().themeDark,
                    maxLines: 1,
                    keyboardAppearance: Brightness.light,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.phone,
                    decoration: StyleUtils().registerTextField(
                        StringUtils().strHintNumber,
                        StringUtils().strLableNumber),
                  )),
              Padding(
                  padding: StyleUtils().registerPadding(),
                  child: TextField(
                    cursorColor: ColorsUtils().themeDark,
                    maxLines: 1,
                    keyboardAppearance: Brightness.light,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: StyleUtils().registerTextField(
                        StringUtils().strHintEmail,
                        StringUtils().strLabelEmail),
                  )),
              Padding(
                  padding: StyleUtils().registerPadding(),
                  child: TextField(
                    cursorColor: ColorsUtils().themeDark,
                    maxLines: 1,
                    keyboardAppearance: Brightness.light,
                    textInputAction: TextInputAction.done,
                    decoration: StyleUtils().registerTextField(
                        StringUtils().strHintPassword,
                        StringUtils().strLabelPassword),
                  )),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.only(left: 40, right: 40),
                    child: FlatButton(
                      onPressed: () {},
                      color: ColorsUtils().themeDark,
                      padding: EdgeInsets.only(
                          left: 50, right: 50, top: 14, bottom: 14),
                      child: Text(
                        StringUtils().strRegister,
                        style: TextStyle(color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadiusDirectional.all(Radius.circular(30))),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
