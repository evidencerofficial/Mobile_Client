import 'package:evidencer/CreateWallet/agreement.dart';
import 'package:flutter/material.dart';

class CreateWallet extends StatefulWidget {
  @override
  _CreateWalletState createState() => _CreateWalletState();
}

class _CreateWalletState extends State<CreateWallet> {
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
                    child: Image.asset("assets/images/vault.png"),
                  ),
                  Text(
                    "Protecting digital\nevidence",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        new MaterialPageRoute(
                          builder: (context) => new Agreement(),
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
                        color: Color(0xffffffff),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "CREATE A NEW ACCOUNT",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff081645),
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "already have an account",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff83AAFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
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
