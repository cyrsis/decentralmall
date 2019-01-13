import 'package:flutter/material.dart';



class AppTheme {

  static final ThemeData FlightTheme = new ThemeData(primaryColor: Color(0xFFF3791A), fontFamily: 'Oxygen');
  static final String Title = "MyApps";

  static final ThemeData Apptheme =
      new ThemeData(primaryColor: Colors.blue, accentColor: Colors.cyan[600]);

  static final ThemeData pinktheme = new ThemeData(
      primaryColor: Colors.pinkAccent,
      scaffoldBackgroundColor: Colors.white,
      accentColor: Colors.cyan[600]);

  static final ThemeData iosTheme = new ThemeData(
    primarySwatch: Colors.red,
    primaryColor: Colors.grey[400],
  );
  static final ThemeData canvasTheme =
      new ThemeData(canvasColor: Colors.greenAccent);

  static final ThemeData defaultAndroidTheme = new ThemeData.light();

  static final ThemeData androidTheme = new ThemeData(
      backgroundColor: Colors.black,
      scaffoldBackgroundColor: Colors.white,
      accentColor: Colors.cyan[600]);

  static final ThemeData hiddendrawerTheme = new ThemeData(
    primarySwatch: Colors.brown,
  );

  static get WeatherTheme => new ThemeData(
        primarySwatch: Colors.blue, //Swatch is useful,because it auto set other others
      );

  static get EggTheme => new ThemeData(
        fontFamily: 'BebasNeue',
      );

  static get FlipCarouselTheme => new ThemeData(
        primarySwatch: Colors.blue,
      );

  static get FeatureDiscoveryTheme => new ThemeData(
        primarySwatch: Colors.blue,
      );

  static get TinderTheme => new ThemeData(
        primaryColorBrightness: Brightness.light,
        primarySwatch: Colors.blue,
      );

  static get CartBloc => ThemeData(primaryColor: Colors.white);

  static get SomeTheme => new ThemeData(
      primaryColor: const Color(0xFF151515),
      accentColor: const Color(0xFFFFBC02D),
      backgroundColor: const Color(0xFF212121),
      cardColor: const Color(0xFF2C2C2C),
      highlightColor: const Color(0xFF424242),
      dividerColor: const Color(0xFF616161));
}
