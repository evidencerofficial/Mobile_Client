import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loading/indicator/ball_pulse_indicator.dart';
import 'package:loading/loading.dart';

loader(var sz) {
  return Loading(
      indicator: BallPulseIndicator(), size: sz, color: Color(0xff265294));
}

wloader(var sz) {
  return Loading(
      indicator: BallPulseIndicator(), size: sz, color: Color(0xffffffff));
}

//
greenLoader(var sz) {
  return Loading(
      indicator: BallPulseIndicator(), size: sz, color: Color(0xff00cc00));
}

redLoader(var sz) {
  return Loading(
      indicator: BallPulseIndicator(), size: sz, color: Color(0xffff0000));
}

void toast(String s) {
  Fluttertoast.showToast(
      msg: s,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.white,
      textColor: Color(0xff265294),
      fontSize: 16.0);
}

void stoast(String s) {
  Fluttertoast.showToast(
      msg: s,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.white,
      textColor: Colors.green,
      fontSize: 16.0);
}

void etoast(String s) {
  Fluttertoast.showToast(
      msg: s,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Color(0xffffffff),
      fontSize: 16.0);
}

unchecked_circle() {
  return Container(
    margin: EdgeInsets.only(left: 0, top: 0),
    padding: EdgeInsets.all(0),
    height: 24,
    width: 24,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              spreadRadius: 0.0,
              color: Colors.transparent,
              offset: Offset(0.0, 2.0),
              blurRadius: 2.0),
        ],
        color: Color(0xff173157),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(260))),
    child: Container(
      margin: EdgeInsets.only(left: 0, top: 0),
      padding: EdgeInsets.all(0),
      height: 17,
      width: 17,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffffffff), width: 2),
          boxShadow: [
            BoxShadow(
                spreadRadius: 0.0,
                color: Colors.transparent,
                offset: Offset(0.0, 2.5),
                blurRadius: 2.0),
          ],
          color: Color(0xffffffff),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(260))),
      // child: Icon(Icons.arrow_forward,
      //     size: 14, color: Colors.white),
    ),
  );
}

checked_circle() {
  return Container(
    margin: EdgeInsets.only(left: 0, top: 0),
    padding: EdgeInsets.all(0),
    height: 24,
    width: 24,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              spreadRadius: 0.0,
              color: Colors.transparent,
              offset: Offset(0.0, 2.0),
              blurRadius: 2.0),
        ],
        color: Color(0xff173157),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(260))),
    child: Container(
      margin: EdgeInsets.only(left: 0, top: 0),
      padding: EdgeInsets.all(0),
      height: 17,
      width: 17,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffffffff), width: 2),
          boxShadow: [
            BoxShadow(
                spreadRadius: 0.0,
                color: Colors.transparent,
                offset: Offset(0.0, 2.5),
                blurRadius: 2.0),
          ],
          color: Color(0xff173157),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(260))),
      // child: Icon(Icons.arrow_forward,
      //     size: 14, color: Colors.white),
    ),
  );
}

unchecked_circle_blue() {
  return Container(
    margin: EdgeInsets.only(left: 0, top: 0),
    padding: EdgeInsets.all(0),
    height: 24,
    width: 24,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              spreadRadius: 0.0,
              color: Colors.transparent,
              offset: Offset(0.0, 2.0),
              blurRadius: 2.0),
        ],
        color: Color(0xff265294),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(260))),
    child: Container(
      margin: EdgeInsets.only(left: 0, top: 0),
      padding: EdgeInsets.all(0),
      height: 17,
      width: 17,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffffffff), width: 2),
          boxShadow: [
            BoxShadow(
                spreadRadius: 0.0,
                color: Colors.transparent,
                offset: Offset(0.0, 2.5),
                blurRadius: 2.0),
          ],
          color: Color(0xffd8e3f5),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(260))),
      // child: Icon(Icons.arrow_forward,
      //     size: 14, color: Colors.white),
    ),
  );
}

checked_circle_blue() {
  return Container(
    margin: EdgeInsets.only(left: 0, top: 0),
    padding: EdgeInsets.all(0),
    height: 24,
    width: 24,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              spreadRadius: 0.0,
              color: Colors.transparent,
              offset: Offset(0.0, 2.0),
              blurRadius: 2.0),
        ],
        color: Color(0xff265294),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(260))),
    child: Container(
      margin: EdgeInsets.only(left: 0, top: 0),
      padding: EdgeInsets.all(0),
      height: 17,
      width: 17,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffffffff), width: 2),
          boxShadow: [
            BoxShadow(
                spreadRadius: 0.0,
                color: Colors.transparent,
                offset: Offset(0.0, 2.5),
                blurRadius: 2.0),
          ],
          color: Color(0xff173157),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(260))),
      // child: Icon(Icons.arrow_forward,
      //     size: 14, color: Colors.white),
    ),
  );
}

badd_circle() {
  return Container(
    margin: EdgeInsets.only(left: 15, top: 20),
    padding: EdgeInsets.all(8),
    height: 40,
    width: 40,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              spreadRadius: 0.0,
              color: Colors.transparent,
              offset: Offset(0.0, 2.0),
              blurRadius: 2.0),
        ],
        color: Color(0xff173157),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(260))),
    child: Icon(Icons.add, size: 22, color: Colors.white),
  );
}

bcheck_circle() {
  return Container(
    margin: EdgeInsets.only(left: 15, top: 20),
    padding: EdgeInsets.all(8),
    height: 40,
    width: 40,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              spreadRadius: 0.0,
              color: Colors.transparent,
              offset: Offset(0.0, 2.0),
              blurRadius: 2.0),
        ],
        color: Color(0xff173157),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(260))),
    child: Icon(Icons.check, size: 22, color: Colors.white),
  );
}

Color _primaryColor = Color(0xff265294);

Widget btn() {
  return Container(
      padding: EdgeInsets.all(8),
      height: 40,
      width: 1005,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                spreadRadius: 0.0,
                color: Color(0xff0c1a2f),
                offset: Offset(0.0, 2.0),
                blurRadius: 6.0),
          ],
          color: Color(0xff1c3c6b),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Next",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffffffff),
              )),
          SizedBox(
            width: 16,
          ),
          Icon(
            Icons.arrow_forward_ios_outlined,
            color: Color(0xffffffff),
            size: 18,
          ),
        ],
      ));
}

// chat
leftBubble(String mID, String message_id, String message, String time_stamp,
    String from, status, ctx) {
  return Column(
    children: [
      Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            constraints: BoxConstraints(
                minWidth: 50, maxWidth: MediaQuery.of(ctx).size.width * 0.7),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    spreadRadius: 0.0,
                    color: Colors.transparent,
                    offset: Offset(0.0, 2.0),
                    blurRadius: 2.0),
              ],
              color: Color(0xff265294),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(12),
                topLeft: Radius.circular(0),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: Text(
              message,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ],
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: 30,
            height: 18,
          ),
          Text(
            time_stamp,
            style: TextStyle(color: Color(0xff265294), fontSize: 14),
          ),
          SizedBox(
            width: 4,
          ),
          if (status == "delivered")
            Icon(
              Icons.done_all,
              color: Color(0xff78ff78),
              size: 18,
            ),
          if (status == "not sent")
            Icon(
              Icons.info_outline,
              color: Color(0xffff5151),
              size: 17,
            ),
        ],
      ),
    ],
  );
}

rightBubble(String mID, String message_id, String message, String time_stamp,
    String from, status, ctx) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(right: 20, top: 10),
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            constraints: BoxConstraints(
                minWidth: 50, maxWidth: MediaQuery.of(ctx).size.width * 0.7),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    spreadRadius: 0.0,
                    color: Colors.transparent,
                    offset: Offset(0.0, 2.0),
                    blurRadius: 2.0),
              ],
              color: Color(0xff265294),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(12),
                topLeft: Radius.circular(12),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: Text(
              message,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            time_stamp,
            style: TextStyle(color: Color(0xff265294), fontSize: 14),
          ),
          SizedBox(
            width: 4,
          ),
          if (status == "delivered")
            Icon(
              Icons.done_all,
              color: Color(0xff78ff78),
              size: 18,
            ),
          if (status == "not sent")
            Icon(
              Icons.info_outline,
              color: Color(0xffff5151),
              size: 17,
            ),
          SizedBox(
            width: 30,
            height: 18,
          ),
        ],
      ),
    ],
  );
}
