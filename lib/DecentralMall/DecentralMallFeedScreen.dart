import 'package:flutter/material.dart';
import './DecentralMallVertife.dart';
import '../Styles/AppDecoration.dart';
import '../Styles/AppImage.dart';
import '../Styles/AppStyle.dart';

class DecentralMallFeedScreen extends StatefulWidget {
  DecentralMallFeedScreen({Key key}) : super(key: key);

  @override
  _DecentralMallFeedScreenState createState() =>
      new _DecentralMallFeedScreenState();
}

class _DecentralMallFeedScreenState extends State<DecentralMallFeedScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            _buildRow("Binance"),
            SizedBox(height: 20.0),
            _buildRow("Block Dynamics"),
            SizedBox(height: 20.0),
            _buildRow("Gensis Block"),
            SizedBox(height: 20.0),
            _buildRow("BitWork"),
          ],
        ),
      ),
    );
  }

  _buildItemCard(String appImage) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => new DecentralMallVertife()));
      },
      child: new Container(
        decoration: AppDecoration.BorderRadiusCircular7,
        width: 225.0,
        height: 126.0,
        child: Image.asset(
          appImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  _buildRow(String sponsor) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(sponsor, style: AppStyle.Montserrat14Bold),
          new Text("Hottest", style: AppStyle.Montserrat8DarkBlue),
          SizedBox(height: 5.0),
          new Container(
            width: double.infinity,
            height: 115.0,
            child: new ListView(
                //Under Container
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildItemCard(AppImage.decntralmarketplace_binance_1),
                  SizedBox(width: 20.0),
                  _buildItemCard(AppImage.decntralmarketplace_binance_2),
                  SizedBox(width: 20.0),
                  _buildItemCard(AppImage.decntralmarketplace_binance_3),
                  SizedBox(width: 20.0),
                  _buildItemCard(AppImage.decntralmarketplace_binance_1),
                  SizedBox(width: 20.0),
                  _buildItemCard(AppImage.decntralmarketplace_binance_3),
                  SizedBox(width: 20.0),
                ]),
          ),
        ],
      ),
    );
  }
}
