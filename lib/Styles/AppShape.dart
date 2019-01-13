import 'package:flutter/material.dart';
import './FabDiamonBoarder.dart';

class AppShape {
  static get FabSquare => RoundedRectangleBorder();

  static get FabSquareRadius => RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16.0)));

  static get FabSquareBorder =>
      RoundedRectangleBorder(side: BorderSide(color: Colors.pink, width: 4.0));

  static get FabDiamonBorder => DiamondBorder();
}
