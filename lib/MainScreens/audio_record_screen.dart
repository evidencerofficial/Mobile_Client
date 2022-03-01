import 'package:evidencer/MainScreens/video_record_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:flutter_svg/svg.dart';

class AudioRecordScreen extends StatefulWidget {
  @override
  _AudioRecordScreenState createState() => _AudioRecordScreenState();
}

class _AudioRecordScreenState extends State<AudioRecordScreen> {
  FlutterSound flutterSound = new FlutterSound();
  var _playerSubscription;
  var recorderSubscription;
  bool _isPlaying = false;
  bool isRecording = false;
  String _playerTxt = "00:00:00";
  String recorderText = "00:00:00";
  String rec_path = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            alignment: Alignment.centerRight,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 0.0,
                                  color: Colors.transparent,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 2.0,
                                ),
                              ],
                              color: Color(0xff2C2F3D),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(
                                Radius.circular(120),
                              ),
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/svg_icons/arrow_left.svg',
                                alignment: Alignment.center,
                                width: 14,
                                height: 14,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 23,
                        ),
                        Text(
                          "Capture Audio",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 33,
                    // color: Color(0xff000000),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 0.0,
                                color: Colors.transparent,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 2.0,
                              ),
                            ],
                            color: Color(0xffff0000),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(
                              Radius.circular(120),
                            ),
                          ),
                        ),
                        Text(
                          "${recorderText}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: w,
                    height: 80,
                    // color: Color(0xff000000),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.only(left: 35),
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/svg_icons/pause.svg',
                              alignment: Alignment.center,
                              width: 17,
                              height: 17,
                            ),
                          ),
                        ),
                        // SizedBox(width: 55),
                        InkWell(
                          onTap: () {
                            open_recorder();
                          },
                          child: Container(
                            width: 16,
                            height: 16,
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
                                Radius.circular(260),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            stop_recorder();
                          },
                          child: Container(
                            width: 16,
                            height: 16,
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
                                Radius.circular(260),
                              ),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.stop_rounded,
                                color: Color(0xffff0000),
                              ),
                            ),
                          ),
                        ),
                        // SizedBox(width: 55),
                        Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.only(right: 35),
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/svg_icons/refresh.svg',
                              alignment: Alignment.center,
                              width: 28,
                              height: 28,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => new RecordVideo()));
                    },
                    child: Container(
                      width: w,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 25,
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 0.0,
                                  color: Colors.transparent,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 2.0,
                                ),
                              ],
                              color: Color(0xff1C2730),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(
                                Radius.circular(14),
                              ),
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/svg_icons/vid_cam.svg',
                                alignment: Alignment.center,
                                width: 15,
                                height: 15,
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   width: 16,
                          // ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (context) => new AudioRecordScreen()));
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 0.0,
                                    color: Colors.transparent,
                                    offset: Offset(0.0, 2.0),
                                    blurRadius: 2.0,
                                  ),
                                ],
                                color: Color(0xff000000),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(14),
                                ),
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/svg_icons/record.svg',
                                  alignment: Alignment.center,
                                  width: 16,
                                  height: 16,
                                ),
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   width: 16,
                          // ),
                          InkWell(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 0.0,
                                    color: Color(0xff1C2730),
                                    offset: Offset(0.0, 2.0),
                                    blurRadius: 2.0,
                                  ),
                                ],
                                color: Color(0xff1C2730),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(14),
                                ),
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  'assets/svg_icons/eclipse.svg',
                                  alignment: Alignment.center,
                                  width: 16,
                                  height: 16,
                                ),
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   width: 16,
                          // ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 0.0,
                                  color: Colors.transparent,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 2.0,
                                ),
                              ],
                              color: Color(0xff1C2730),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(
                                Radius.circular(14),
                              ),
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/svg_icons/explorer.svg',
                                alignment: Alignment.center,
                                width: 16,
                                height: 16,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
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

  Future<void> open_player() async {
    // String path = await flutterSound.startPlayer(null);
    // _playerSubscription = flutterSound.onPlayerStateChanged.listen((e) {
    //   if (e != null) {
    //     DateTime date =
    //         new DateTime.fromMillisecondsSinceEpoch(e.currentPosition.toInt());
    //     String txt = DateFormat('mm:ss:SS', 'en_US').format(date);
    //     this.setState(() {
    //       this._isPlaying = true;
    //       this._playerTxt = txt.substring(0, 8);
    //     });
    //   }
    // });
  }

  Future<void> open_recorder() async {
    // rec_path = await flutterSound.startRecorder(null);
    // recorderSubscription = flutterSound.onRecorderStateChanged.listen((e) {
    //   if (e != null) {
    //     DateTime date =
    //         new DateTime.fromMillisecondsSinceEpoch(e.currentPosition.toInt());
    //     String txt = DateFormat('mm:ss:SS', 'en_US').format(date);
    //     this.setState(() {
    //       this.isRecording = true;
    //       this.recorderText = txt.substring(0, 8);
    //     });
    //   }
    // });
  }

  Future<void> stop_recorder() async {
    // String result = await flutterSound.stopRecorder();
    // // print(‘stopRecorder: $result’);
    // if (recorderSubscription != null) {
    //   recorderSubscription.cancel();
    //   recorderSubscription = null;
    // }
  }
}
