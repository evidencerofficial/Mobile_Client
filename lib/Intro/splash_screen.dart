import 'dart:async';

import 'package:evidencer/Intro/onboarding.dart';
import 'package:evidencer/MainScreens/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = await (prefs.getBool('seen') ?? false);
    String _authStatus = await prefs.getString("stat");
    String account_type = await prefs.getString("account_type");

    setState(() {
      seen = _seen;
      logged_in = _authStatus;
      acc_type = account_type;
    });
    // print(_authStatus);
    // print(account_type);
    // if (_authStatus == "logged in") {
    //   // if (account_type == "commercial") {
    //   //   Navigator.of(context).pushReplacement(new MaterialPageRoute(
    //   //       builder: (context) => new CommercialDashboard()));
    //   // } else if (account_type == "personal") {
    //   //   Navigator.of(context).pushReplacement(new MaterialPageRoute(
    //   //       builder: (context) => new PersonalDashboard()));
    //   // } else if (account_type == "courier") {
    //   //   Navigator.of(context).pushReplacement(new MaterialPageRoute(
    //   //       builder: (context) => new CourierDashboard()));
    //   // }
    // } else {
    //   // Navigator.of(context).pushReplacement(
    //   //     new MaterialPageRoute(builder: (context) => new WelcomeScreen()));
    // }

    // Navigator.of(context).pushReplacement(
    //     new MaterialPageRoute(builder: (context) => new CustomerDashboard()));
  }

  startTime() async {
    var _duration = new Duration(milliseconds: 2500);
    return new Timer(_duration, checkFirstSeen);
  }

//  void navigationPage() {
//    Navigator.pushReplacement( context,
//      MaterialPageRoute(builder: (context) => LoginPage()),
//    );
//  }

  AnimationController _scale2Controller;
  AnimationController _scale3Controller;
  AnimationController _positionController;

  Animation<double> _scale2Animation;
  Animation<double> _scale3Animation;
  Animation<double> _positionAnimation;

  bool hideIcon = false;

  bool seen = false;
  String logged_in = "";
  String acc_type = "";

  @override
  void initState() {
    super.initState();
    // startTime();

    checkFirstSeen();

    _positionController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 0));

    _positionAnimation =
        Tween<double>(begin: 0.0, end: 215.0).animate(_positionController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _scale2Controller.forward();
            }
          });

    _scale2Controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    _scale3Controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));

    _scale2Animation =
        Tween<double>(begin: 1.0, end: 0.8).animate(_scale2Controller)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              setState(() {
                hideIcon = true;
              });
              _scale3Controller.forward();
            }
          });

    _scale3Animation = Tween<double>(begin: 1.0, end: 10.0).animate(
        _scale3Controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          if (seen) {
            if (logged_in == "logged in") {
            } else {}
          } else {
            Navigator.of(context).pushReplacement(
                new MaterialPageRoute(builder: (context) => new Dashboard()));
          }
          Navigator.push(
            context,
            PageTransition(
              curve: Curves.linear,
              type: PageTransitionType.topToBottom,
              child: OnboardingScreen(),
            ),
          );
        }
      });

    // _positionController.forward();
    _scale2Controller.forward();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xffffffff),
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: InkWell(
                  onTap: () {},
                  child: AnimatedBuilder(
                    animation: _scale3Controller,
                    builder: (context, child) => Transform.scale(
                      scale: _scale3Animation.value,
                      child: Container(
                        height: 155,
                        width: 155,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0.0,
                              color: Colors.transparent,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 2.0,
                            ),
                          ],
                          color: Color(0xff081645),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(
                            Radius.circular(260),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: InkWell(
                  onTap: () {
                    // _positionController.forward();
                  },
                  child: AnimatedBuilder(
                    animation: _scale2Controller,
                    builder: (context, child) => Transform.scale(
                      scale: _scale2Animation.value,
                      child: Container(
                        height: 195,
                        width: 195,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0.0,
                              color: Colors.transparent,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 2.0,
                            ),
                          ],
                          color: Color(0xff081645),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(
                            Radius.circular(260),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            hideIcon == false
                ? Center(
                    child: Image.asset(
                      'assets/images/logo_shape_white.png',
                      alignment: Alignment.center,
                      width: 115,
                      height: 115,
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
