import 'package:evidencer/CreateWallet/verify_recovery_phrase.dart';
import 'package:evidencer/utils/ui_tools.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateRecoveryPhrase extends StatefulWidget {
  @override
  _CreateRecoveryPhraseState createState() => _CreateRecoveryPhraseState();
}

class _CreateRecoveryPhraseState extends State<CreateRecoveryPhrase> {
  bool tnc_checked = false;

  String phrase =
      "come fog distance demise wealth thank concert collect other company senior drop";

  List<String> phrase_arr = [];
  @override
  void initState() {
    phrase_arr = phrase.split(' ');
    print(phrase_arr);
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
                          "Your recovery phrase",
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
                    "Write down or copy these words in the right order\nand save them somewhere safe.",
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
                    children: phrase_arr
                        .map((item) => new Container(
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
                                    "${phrase_arr.indexOf(item) + 1}",
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
                            ))
                        .toList(),
                  ),
                  SizedBox(
                    height: 42,
                  ),
                  InkWell(
                    onTap: () {
                      Clipboard.setData(ClipboardData(text: phrase));
                      toast("copied!");
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 0.0,
                            color: Colors.transparent,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 2.0,
                          ),
                        ],
                        color: Color(0xff3772FF),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "COPY",
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
                      Navigator.of(context).pushReplacement(
                        new MaterialPageRoute(
                          builder: (context) =>
                              new VerifyRecoveryPhrase(phrase),
                        ),
                      );
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
                        color: Color(0xff3772FF),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "CONTINUE",
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
                    height: 46,
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
}
