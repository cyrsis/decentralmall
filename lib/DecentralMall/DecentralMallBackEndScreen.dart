import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttersandbox2018/Services/FireStoreServices.dart';
import 'package:fluttersandbox2018/Styles/AppColors.dart';
import 'package:fluttersandbox2018/Styles/AppStyle.dart';

class DecentralMallBackEndScreen extends StatefulWidget {
  DecentralMallBackEndScreen({Key key, this.title: "Tensor Sum of the Network"})
      : super(key: key);

  final String title;

  @override
  _DecentralMallBackEndScreenState createState() =>
      new _DecentralMallBackEndScreenState();
}

class _DecentralMallBackEndScreenState extends State<DecentralMallBackEndScreen>
    with TickerProviderStateMixin {
  int _state = 0;
  Animation _animation;
  AnimationController _controller;
  GlobalKey _globalKey = GlobalKey();
  double _width = double.infinity;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title, style: AppStyle.basewhiteTextStyle),
        backgroundColor: AppColors.DarkBlue,
      ),
      body: new Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 32.0,
            right: 32.0,
          ),
          child: new PhysicalModel(
            //PhysicalModel Let’s you create a physical model with a rounded-rectangular clip.
            elevation: 5.0,
            shadowColor: Colors.lightGreenAccent,
            color: AppColors.DarkBlue,
            borderRadius: BorderRadius.circular(25.0),
            child: Container(
              key: _globalKey,
              height: 48.0,
              width: _width,
              child: new RaisedButton(
                padding: EdgeInsets.all(0.0),
                child: setUpButtonChild(),
                onPressed: () {
                  setState(() {
                    if (_state == 0) {
                      animateButton();
                    }
                  });
                },
                elevation: 4.0,
                color: AppColors.DarkBlue,
              ),
            ),
          ),
        ),
      ),
    );
  }

  ///
  ///
  ///
  setUpButtonChild() {
    if (_state == 0) {
      return new Text(
        "Do the Math....",
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      );
    } else if (_state == 1) {
      return SizedBox(
        height: 144.0,
        width: 144.0,
        child: CircularProgressIndicator(
          value: null,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white), //
        ),
      );
    } else {
      return Icon(Icons.check, color: Colors.white);
    }
  }

  void animateButton() {
    double initialWidth = _globalKey.currentContext.size.width;

    _controller =
        AnimationController(duration: Duration(milliseconds: 300), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {
          _width = initialWidth - ((initialWidth - 48.0) * _animation.value);
        });
      });
    _controller.forward();

     FireStoreService().updateBlockPassScore();

    setState(() {
      _state = 1;
    });

    Timer(Duration(milliseconds: 1000), () {
      setState(() {
        _state = 2;
      });
    });
  }
}
