import 'package:flutter/material.dart';

class AppBorder {
  static get BorderAll =>
      new Border.all(color: Colors.green, width: 5.0, style: BorderStyle.solid);

  static get BorderTopGreen => new Border(
        top: new BorderSide(
            color: Colors.green, width: 5.0, style: BorderStyle.solid),
      );

  static get BorderDirectional => BorderDirectional( // BorderDirectional like the Border Class take 4 parameters, but instead left and right, it takes start and end.
    top: new BorderSide(
        color: Colors.green,
        width: 5.0,
        style: BorderStyle.solid
    ),
    start: new BorderSide(
        color: Colors.green,
        width: 5.0,
        style: BorderStyle.solid
    ),
  );


}
