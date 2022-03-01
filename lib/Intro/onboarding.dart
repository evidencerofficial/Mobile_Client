import 'package:evidencer/CreateWallet/start.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  bool activePrev = false;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: 8.0,
      width: isActive ? 25.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xffffffff) : Color(0xffc4c4c4),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff081645),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.64,
                  margin: EdgeInsets.only(left: 6),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0.0,
                        color: Colors.transparent,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 2.0,
                      ),
                    ],
                    color: Color(0xffffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                    ),
                  ),
                  child: Column(),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: (MediaQuery.of(context).size.height * 0.36) - 0,
                  margin: EdgeInsets.only(left: 6),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0.0,
                        color: Colors.transparent,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 2.0,
                      ),
                    ],
                    color: Color(0xffffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                        // topRight: Radius.circular(40),
                        ),
                  ),
                  child: Column(),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: (MediaQuery.of(context).size.height * 0.36),
                  margin: EdgeInsets.only(right: 6),
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
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  color: Colors.transparent,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.64,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                  ),
                                  Image.asset(
                                    "assets/images/digitalevidence.png",
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    height: 338,
                                  ),
                                  Text(
                                    "Capture Digital Evidence",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff3977FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 45),
                            Text(
                              "A reliable way to record digital footages\n of happenings around you\n anywhere, anytime.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins-Light"),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.64,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                  ),
                                  Stack(
                                    children: [
                                      Center(
                                        child: Image.asset(
                                          "assets/images/vector.png",
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.75,
                                          height: 338,
                                        ),
                                      ),
                                      Center(
                                        child: Image.asset(
                                          "assets/images/realtime.png",
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.75,
                                          height: 338,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "REALTIME SYNC",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff3977FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 45),
                            Text(
                              "Synchronize your digital records in realtime\n to avoid loosing them",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins-Light"),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.64,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                  ),
                                  Image.asset(
                                    "assets/images/encrypted.png",
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    height: 338,
                                  ),
                                  Text(
                                    "ENCRYPTION",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff3977FE),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 45),
                            Text(
                              "Secure your digital records with\n state of the art encryption\n technologies ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins-Light"),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 64,
              child: Container(
                margin: EdgeInsets.only(bottom: 30),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => CreateWallet()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 0),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _currentPage == 2
                          ? Text(
                              "Get Started",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          : Text(
                              "Skip >>",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                      SizedBox(
                        width: 45,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void toast(String s) {
    Fluttertoast.showToast(
        msg: s,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white,
        textColor: Color(0xff191970),
        fontSize: 16.0);
  }
}
