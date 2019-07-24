import 'package:flutter/material.dart';
import 'package:coffee_shop_finder/utils/ColorUtils.dart';
import 'package:coffee_shop_finder/utils/StringUtils.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:coffee_shop_finder/Login.dart';
import 'package:coffee_shop_finder/Register.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignupScreen(),
    );
  }
}

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  int pagelength = 3;
  final pageIndexNotifier = ValueNotifier<int>(0);
  PageViewIndicator CustomIndicator(int length) {
    return PageViewIndicator(
      pageIndexNotifier: pageIndexNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
            size: 8.0,
            color: Colors.black87,
          ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
            scale: CurvedAnimation(
              parent: animationController,
              curve: Curves.ease,
            ),
            child: Circle(
              size: 12.0,
              color: ColorsUtils().themeDark,
            ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                  flex: 5,
                  child: Stack(
                    alignment: FractionalOffset.bottomCenter,
                    children: <Widget>[
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage(StringUtils().homeSliderBg),
                                  fit: BoxFit.fitWidth)),
                          child: PageView.builder(
                              onPageChanged: (index) =>
                                  pageIndexNotifier.value = index,
                              itemCount: pagelength,
                              itemBuilder: (context, position) {
                                return SliderMenu();
                              }),
                        ),
                      ),
                      CustomIndicator(pagelength),
                    ],
                  )),
              //
              Expanded(
                flex: 5,
                child: Container(
                  width: double.maxFinite,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Get the best coffee\n in town!',
                        style: TextStyle(
                            color: ColorsUtils().textColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 34),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Register();
                              }));
                            },
                            color: ColorsUtils().themeDark,
                            padding: EdgeInsets.only(
                                left: 50, right: 50, top: 14, bottom: 14),
                            child: Text(
                              'Register',
                              style: TextStyle(color: Colors.white),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusDirectional.all(
                                    Radius.circular(30))),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          FlatButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Login();
                                }));
                              },
                              color: Colors.white,
                              padding: EdgeInsets.only(
                                  left: 50, right: 50, top: 14, bottom: 14),
                              child: Text(
                                'Log In  ',
                                textAlign: TextAlign.center,
                                style:
                                    TextStyle(color: ColorsUtils().themeDark),
                              ),
                              shape: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  borderSide: BorderSide(
                                      color: ColorsUtils().themeDark)))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 60, right: 60, top: 14, bottom: 14),
                          child: FlatButton(
                              onPressed: () {},
                              color: Colors.white,
                              padding: EdgeInsets.only(
                                  left: 50, right: 50, top: 12, bottom: 12),
                              child: Row(
                                children: <Widget>[
                                  Image.asset(
                                    'images/ic_fb.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                  Text(
                                    'Connect with facebook  ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: ColorsUtils().facebook),
                                  ),
                                ],
                              ),
                              shape: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  borderSide: BorderSide(
                                      color: ColorsUtils().facebook))),
                        ),
                      )
                    ],
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

class SliderMenu extends StatelessWidget {
  String imgUrl;

  SliderMenu();

  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: screenHight,
              width: screenWidth,
              child: Image.asset(StringUtils().homeSlider),
            ),
            /*Container(
              child: Text('sdsd'),
              color: Colors.blue,
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),*/
          )
        ],
      ),
    );
  }
}
