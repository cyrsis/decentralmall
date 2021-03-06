import 'package:flutter/material.dart';
import './AppBorder.dart';
import './AppColors.dart';
import './AppGradient.dart';
import './AppImage.dart';

class AppDecoration {
  static get BorderBottom => BoxDecoration(
      // 下滑线浅灰色，宽度1像素
      border: Border(bottom: BorderSide(color: Colors.grey[200], width: 1.0)));

  static get ShapeDecoration => ShapeDecoration(
        color: Colors.white,
        shape: Border.all(
              color: Colors.red,
              width: 8.0,
            ) +
            Border.all(
              color: Colors.green,
              width: 8.0,
            ) +
            Border.all(
              color: Colors.blue,
              width: 8.0,
            ),
      );

  static get RadialGradientTitleMode => new BoxDecoration(
        color: Colors.purple,
        gradient: new RadialGradient(
            colors: [
              Colors.red,
              Colors.cyan,
              Colors.purple,
              Colors.lightGreenAccent
            ],
            center: Alignment(-0.7, -0.6),
            radius: 0.2,
            //Whatever times in here
            tileMode: TileMode.clamp,
            stops: [0.3, 0.5, 0.6, 0.7]),
      );

  static get LinerarGradientTileMode => new BoxDecoration(
      color: Colors.purple,
      gradient: new LinearGradient(
          colors: [Colors.red, Colors.cyan],
          begin: Alignment.centerRight,
          end: new Alignment(0.8, 0.0),
          tileMode: TileMode.clamp));

  static get LinearGradientCenterRight => new BoxDecoration(
      color: Colors.purple,
      gradient: new LinearGradient(
          colors: [Colors.red, Colors.cyan],
          begin: Alignment.centerRight,
          end: new Alignment(-1.0, -1.0)));

  static get BoxShapeCircleImageWhiteBorder => new BoxDecoration(
      shape: BoxShape.circle,
      image: new DecorationImage(
          image: new AssetImage("assets/profile/emma-watson.jpg"),
          fit: BoxFit.cover),
      border: Border.all(color: Colors.white30, width: 0.5));

  static get BoxShapeCircleDazzlingBlue => new BoxDecoration(
      color: AppColors.DazzlingBlue,
      shape: BoxShape.circle,
  );

  static get BoxShapeCircleWhite => new BoxDecoration(
      color: Colors.white.withOpacity(0.3),
      shape: BoxShape.circle,
      );


  static get BoxShapeCircleAlphaPink => new BoxDecoration(
      color: AppColors.AlphaPinkRed,
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white, width: 3.0));

  static get BoxShapeCircleImage => new BoxDecoration(
      shape: BoxShape.circle,
      image: new DecorationImage(
          image: new AssetImage("assets/profile/emma-watson.jpg"),
          fit: BoxFit.cover),
      );

  static get BoxShapeCircleImageWhiteBorder5 => new BoxDecoration(
      shape: BoxShape.circle,
      image: new DecorationImage(
          image: new AssetImage("assets/profile/emma-watson.jpg"),
          fit: BoxFit.cover),
      border: Border.all(color: Colors.white, width: 3.0));

  static get BorderRadisAllWImage => new BoxDecoration(
        image: new DecorationImage(
            image: new AssetImage("assets/profile/emma-watson.jpg"),
            fit: BoxFit.cover),
        borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
        boxShadow: <BoxShadow>[
          new BoxShadow(
              color: Colors.black26, blurRadius: 5.0, spreadRadius: 1.0),
        ],
      );

  static get BorderRadius3DarkBlue => new BoxDecoration(
        color: AppColors.DarkBlue,
        borderRadius: new BorderRadius.circular(3.0),
      );

  static get BorderRadius3DarkIndigo => new BoxDecoration(
        color: AppColors.AlphaIndigo,
        borderRadius: new BorderRadius.circular(3.0),
      );

  static get BorderRadius3Celeste => new BoxDecoration(
        color: AppColors.AlphaCeleste,
        borderRadius: new BorderRadius.circular(3.0),
      );

  static get BorderRadius30DarkBlue => new BoxDecoration(
        color: AppColors.DarkBlue,
        borderRadius: new BorderRadius.circular(30.0),
      );

  static get BorderRadius7AquaGraident => new BoxDecoration(
      color: AppColors.DarkBlue,
      borderRadius: new BorderRadius.circular(7.0),
      gradient: AppGradient.LinearGradientAquaTopToBottomRight);

  static get BorderRadius30AquaGraident => new BoxDecoration(
      color: AppColors.DarkBlue,
      borderRadius: new BorderRadius.circular(30.0),
      gradient: AppGradient.LinearGradientAqua);

  static get BorderRadius30AzureGraident => new BoxDecoration(
      color: AppColors.DarkBlue,
      borderRadius: new BorderRadius.circular(30.0),
      gradient: AppGradient.LinearGradientAzure);

  static get BorderRadius30AzureGraidentLeftRight => new BoxDecoration(
      borderRadius: new BorderRadius.circular(30.0),
      gradient: AppGradient.LinearGradientAzureLeftRight);

  static get BorderRadius5GlassBlue => new BoxDecoration(
        color: AppColors.GlassBlue.withOpacity(0.8),
        borderRadius: new BorderRadius.circular(5.0),
      );

  static get BorderRadius30DarkWhiteOpacity => new BoxDecoration(
        color: Colors.white.withOpacity(0.5),
        borderRadius: new BorderRadius.circular(30.0),
      );

  static get borderRadiusCircular7Grey => new BoxDecoration(
      borderRadius: BorderRadius.circular(7.0), color: AppColors.StaticGrey);

  static get BorderRadiusCircular7 =>
      new BoxDecoration(borderRadius: BorderRadius.circular(7.0));

  static get BorderRadiusCircular15 =>
      new BoxDecoration(borderRadius: BorderRadius.circular(15.0));

  static get BorderRadisBoxSadowImage => new BoxDecoration(
      color: Colors.white,
      border: new Border.all(
          color: Colors.green, width: 5.0, style: BorderStyle.solid),
      borderRadius: new BorderRadius.only(
        topLeft: new Radius.elliptical(40.0, 10.0),
        bottomLeft: new Radius.circular(20.0),
      ),
      boxShadow: [
        new BoxShadow(
          color: Colors.red,
          offset: new Offset(20.0, 10.0),
          blurRadius: 20.0,
          spreadRadius: 40.0,
        ),
        new BoxShadow(
            color: Colors.yellow,
            offset: new Offset(20.0, 10.0),
            blurRadius: 20.0,
            spreadRadius: 20.0),
      ],
      shape: BoxShape.circle,
      //Shape for the BoxShadow
      image: new DecorationImage(
        image: new AssetImage(AppImage.login_logo),
        //The image to be painted into the decoration. Typically this will be an AssetImage (for an image shipped with the application) or a NetworkImage (for an image obtained from the network).
      ));

  static get Full => new BoxDecoration(
      color: Colors.white,
      border: AppBorder.BorderAll,
      borderRadius: new BorderRadius.only(
        topLeft: new Radius.elliptical(40.0, 10.0),
        bottomLeft: new Radius.circular(20.0),
      ),
      //You use borderRadius if you want to make the corner of the box rouned,, NB: borderRadius applies only to boxes with rectangular shapes.
      boxShadow: [
        new BoxShadow(
          color: Colors.red,
          offset: new Offset(20.0, 10.0),
          blurRadius: 20.0,
          spreadRadius: 40.0,
        ),
        new BoxShadow(
            color: Colors.yellow,
            offset: new Offset(20.0, 10.0),
            blurRadius: 20.0,
            spreadRadius: 20.0),
      ],
      shape: BoxShape.circle,
      //Shape for the BoxShadow or BoxShape.rectangle
      image: new DecorationImage(
        image: new AssetImage(AppImage.login_logo),
        //The image to be painted into the decoration. Typically this will be an AssetImage (for an image shipped with the application) or a NetworkImage (for an image obtained from the network).

        centerSlice: new Rect.fromLTWH(50.0, 50.0, 220.0, 90.0),
        //Scale Left  50.0, Top 50.0 , Inner Width is 220.0, Inner Hight is 90.0
        colorFilter:
            new ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.src),
        repeat: ImageRepeat.noRepeat,
      ));

  static get ImageWithDecoration => new BoxDecoration(
      color: Colors.purple,
      gradient: new RadialGradient(
          colors: [
            Colors.red,
            Colors.cyan,
            Colors.purple,
            Colors.lightGreenAccent
          ],
          center: Alignment(0.0, 0.0),
          radius: 0.5,
          tileMode: TileMode.clamp,
          stops: [0.3, 0.5, 0.9, 1.0]),
      image: new DecorationImage(
          image: new NetworkImage("http://jlouage.com/images/author.jpg")));

  static get RoundBorderWhiteTextWtihBlackOpacity => new BoxDecoration(
        borderRadius: new BorderRadius.circular(30.0),
        border: new Border.all(
          color: Colors.white,
          width: 1.5,
        ),
        color: Colors.black.withOpacity(0.3),
      );

  static get ImageDecroationCenterSlice => new DecorationImage(
      image: new AssetImage(AppImage.login_logo),
      centerSlice: new Rect.fromLTWH(50.0, 50.0, 220.0, 90.0),
      fit: BoxFit.fill);

  static get ImageDecorationColorFilter => new BoxDecoration(
      image: new DecorationImage(
          image: new AssetImage(AppImage.login_logo),
          colorFilter:
              ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.src)));

  // the image is painted above the color and the gradient.
  static get ForegroundDecoartionImage => BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://www.example.com/images/frame.png'),
          centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
        ),
      );

  static get AllBorder => new BoxDecoration(
      border: new Border(
          top: new BorderSide(width: 1.0, color: const Color(0xff999999)),
          right: new BorderSide(width: 1.0, color: const Color(0xff999999)),
          bottom: new BorderSide(width: 1.0, color: const Color(0xff999999)),
          left: new BorderSide(width: 1.0, color: const Color(0xff999999))));
}
