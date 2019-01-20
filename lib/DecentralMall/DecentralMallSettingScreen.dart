import 'package:flutter/material.dart';
import 'package:fluttersandbox2018/Styles/AppDecoration.dart';
import 'package:fluttersandbox2018/Styles/AppImage.dart';

class DecentralMallSettingScreen extends StatefulWidget {
  DecentralMallSettingScreen({Key key}) : super(key: key);

  @override
  _DecentralMallSettingScreenState createState() =>
      new _DecentralMallSettingScreenState();
}

class _DecentralMallSettingScreenState
    extends State<DecentralMallSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: new Image.asset(
            AppImage.decntralmakret_issuecertificate, width: 350.0,
            height: 328.0, fit: BoxFit.cover),
      )
    );
  }
}
