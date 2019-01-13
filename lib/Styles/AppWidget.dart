import 'package:flutter/material.dart';
import './AppColors.dart';
import './AppStyle.dart';

class AppWidget {

  static get ButtonFollowIcon => new Padding(
    padding: const EdgeInsets.only(left: 4.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new Text('FOLLOW', style: AppStyle.Montserrat10White),
        new Icon(
          Icons.people,
          size: 10.0,
          color: Colors.white,
        )
      ],
    ),
  );

  static get ButtonFollowingIcon => new Padding(
    padding: const EdgeInsets.only(left: 4.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new Text('FOLLOWING', style: AppStyle.Montserrat10White),
        new Icon(
          Icons.check,
          size: 10.0,
          color: Colors.white,
        )
      ],
    ),
  );




}
