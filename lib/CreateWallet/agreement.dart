import 'package:evidencer/CreateWallet/create_recovery_phrase.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Agreement extends StatefulWidget {
  @override
  _AgreementState createState() => _AgreementState();
}

class _AgreementState extends State<Agreement> {
  bool tnc_checked = false;

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
                  Spacer(),
                  Container(
                    child: Image.asset("assets/images/file_tansfer.png"),
                  ),
                  Text(
                    "Back up your account now",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "In the next step you will see 12 words that\nallows you to recover a wallet",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffffffff).withOpacity(0.6),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    width: w,
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: Row(children: [
                      Checkbox(
                        value: tnc_checked,
                        onChanged: (bool value) {
                          setState(() {
                            tnc_checked = value;
                          });
                        },
                      ),
                      Container(
                        width: w - 68,
                        child: Text(
                          "I understand that if I lose my recovery words, I will not be able to access my account",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff3977FE).withOpacity(0.6),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      if (tnc_checked) {
                        Navigator.of(context).pushReplacement(
                          new MaterialPageRoute(
                            builder: (context) => new CreateRecoveryPhrase(),
                          ),
                        );
                      }
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
                        color:
                            tnc_checked ? Color(0xff3772FF) : Color(0xffE5E5E5),
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
                    height: 66,
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
