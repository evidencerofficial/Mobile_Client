import 'package:evidencer/MainScreens/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VerifyRecoveryPhrase extends StatefulWidget {
  final phrase;
  VerifyRecoveryPhrase(this.phrase);

  @override
  _VerifyRecoveryPhraseState createState() => _VerifyRecoveryPhraseState();
}

class _VerifyRecoveryPhraseState extends State<VerifyRecoveryPhrase> {
  bool tnc_checked = false;
  bool show_error = false;

  // strings.map((item) => new Text(item)).toList()
  List<String> phrase = [];
  List<String> phrase_shuffled = [];
  List<String> phrase_rearranged = [];

  @override
  void initState() {
    // TODO: implement initState
    phrase = widget.phrase.split(' ');

    phrase_shuffled = List.from(phrase);
    phrase_shuffled.shuffle();

    print(phrase);
    print(phrase_shuffled);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff081645),
        body: Stack(
          children: [
            Container(
              width: w,
              height: h,
              child: Center(
                child: Image.asset(
                  'assets/images/blur_green.png',
                  alignment: Alignment.center,
                  // width: 100,
                  // height: 100,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                'assets/images/blur_purple.png',
                alignment: Alignment.center,
                // width: 100,
                // height: 100,
              ),
            ),
            Container(
              width: w, height: h,
              child: Column(
                children: [
                  Container(
                    width: w,
                    height: 40,
                    margin: EdgeInsets.only(right: 14, left: 14, top: 18),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Confirm your recovery phrase",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Tap the words to put them in the correct order.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffffffff).withOpacity(0.6),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 54,
                  ),
                  Wrap(
                    // direction: Axis.vertical,
                    // alignment: WrapAlignment.center,
                    spacing: 12.0,
                    // runAlignment:WrapAlignment.center,
                    runSpacing: 12.0,
                    // crossAxisAlignment: WrapCrossAlignment.center,
                    // textDirection: TextDirection.rtl,
                    // verticalDirection: VerticalDirection.up,
                    children: phrase_rearranged
                        .map((item) => InkWell(
                              onTap: () {
                                undo_arrange(item);
                              },
                              child: new Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      spreadRadius: 0.0,
                                      color: Colors.transparent,
                                      offset: Offset(0.0, 2.0),
                                      blurRadius: 2.0,
                                    ),
                                  ],
                                  color: Color(0xff133085),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                                width: 100,
                                height: 40,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "${phrase_rearranged.indexOf(item) + 1}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      "${item}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 15,
                                        // fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: show_error
                        ? Text(
                            "Invalid order, please retry!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffFF3B30).withOpacity(0.6),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : Container(),
                  ),
                  Spacer(),
                  Wrap(
                    // direction: Axis.vertical,
                    // alignment: WrapAlignment.center,
                    spacing: 12.0,
                    // runAlignment:WrapAlignment.center,
                    runSpacing: 12.0,
                    // crossAxisAlignment: WrapCrossAlignment.center,
                    // textDirection: TextDirection.rtl,
                    // verticalDirection: VerticalDirection.up,
                    children: phrase_shuffled
                        .map((item) => InkWell(
                              onTap: () {
                                arrange(item);
                              },
                              child: new Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      spreadRadius: 0.0,
                                      color: Colors.transparent,
                                      offset: Offset(0.0, 2.0),
                                      blurRadius: 2.0,
                                    ),
                                  ],
                                  color: Color(0xff133085),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                                width: 100,
                                height: 40,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 12,
                                    ),
                                    // Text(
                                    //   "${phrase_shuffled.indexOf(item) + 1}",
                                    //   textAlign: TextAlign.center,
                                    //   style: TextStyle(
                                    //     color: Color(0xffffffff),
                                    //     fontSize: 15,
                                    //     fontWeight: FontWeight.bold,
                                    //   ),
                                    // ),
                                    // SizedBox(
                                    //   width: 6,
                                    // ),
                                    Text(
                                      "${item}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 15,
                                        // fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                  Spacer(),
                  Text(
                    "Do not share your secert phrase!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffFF3B30).withOpacity(0.6),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: w - 28,
                    child: Text(
                      "if someone has your secret phrase, they will have full control of your account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xffFF3B30).withOpacity(0.6),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  InkWell(
                    onTap: () {
                      if (confirm_recovery()) {
                        Navigator.of(context).pushReplacement(
                          new MaterialPageRoute(
                            builder: (context) => new Dashboard(),
                          ),
                        );
                      } else {}
                    },
                    child: Container(
                      height: 40,
                      width: w - 42,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 0.0,
                            color: Colors.transparent,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 2.0,
                          ),
                        ],
                        color: confirm_recovery()
                            ? Color(0xff3772FF)
                            : Color(0xff606060),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "DONE",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              // child:
            ),
          ],
        ),
      ),
    );
  }

  void arrange(String item) {
    setState(() {
      phrase_shuffled.remove(item);
      phrase_rearranged.add(item);
    });
    if (phrase_rearranged.isEmpty) {
      setState(() {
        show_error = false;
      });
    }
    for (var i = 0; i < phrase_rearranged.length; i++) {
      if (phrase_rearranged[i] == phrase[i]) {
        setState(() {
          show_error = false;
        });
      } else {
        print(phrase_rearranged);
        print(phrase);
        setState(() {
          show_error = true;
        });
        break;
      }
    }
  }

  void undo_arrange(String item) {
    setState(() {
      phrase_shuffled.add(item);
      phrase_rearranged.remove(item);
    });
    if (phrase_rearranged.isEmpty) {
      setState(() {
        show_error = false;
      });
    }
    for (var i = 0; i < phrase_rearranged.length; i++) {
      if (phrase_rearranged[i] == phrase[i]) {
        setState(() {
          show_error = false;
        });
      } else {
        setState(() {
          show_error = true;
        });
        break;
      }
    }
  }

  bool confirm_recovery() {
    if (phrase_rearranged.length < 12) {
      return false;
    } else {
      for (var i = 0; i < 12; i++) {
        if (phrase_rearranged[i] == phrase[i]) {
        } else {
          return false;
          break;
        }
      }
      return true;
    }
  }
}
