import 'package:flutter/material.dart';
import 'package:coffee_shop_finder/utils/ColorUtils.dart';

class StyleUtils {
  EdgeInsets menuDetailsRowPadding() {
    return EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 20);
  }

  EdgeInsets menuBottomMenu() {
    return EdgeInsets.only(top: 20, bottom: 10, right: 10, left: 10);
  }

  EdgeInsets registerPadding() {
    return EdgeInsets.only(left: 40, right: 40, top: 40);
  }

  InputDecoration registerTextField(String hint, String lable) {
    return InputDecoration(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorsUtils().themeDark)),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorsUtils().themeLight)),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: ColorsUtils().themeLight)),
        hintText: hint,
        labelText: lable,
        labelStyle: TextStyle(color: Colors.black.withOpacity(.50)));
  }

  TextStyle menuDetailsRowText() {
    return TextStyle(
        color: ColorsUtils().textColorDark,
        fontWeight: FontWeight.w400,
        fontSize: 22);
  }

  Container itemBorder() {
    return Container(
      color: ColorsUtils().textColorDark.withOpacity(.30),
      width: double.infinity,
      height: 1,
    );
  }
}
