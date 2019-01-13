import 'package:flutter/material.dart';
import './DecentralMallAddBlackList.dart';
import '../Styles/AppColors.dart';
import '../Styles/AppStyle.dart';

class DecentralMallUserOrMerch extends StatefulWidget {
  DecentralMallUserOrMerch({Key key}) : super(key: key);

  @override
  _DecentralMallUserOrMerchState createState() =>
      new _DecentralMallUserOrMerchState();
}

class _DecentralMallUserOrMerchState extends State<DecentralMallUserOrMerch> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              InkWell(
                  splashColor: AppColors.TroutGrey,
                  onTap: () {},
                  child: new Text("Customer",
                      style: AppStyle.Montserrat40DarkBold)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text("Blockpass score ",
                      style: AppStyle.Montserrat14Bold),
                  new Text("85", style: AppStyle.Montserrat14GreenBold),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: new Text(" or", style: AppStyle.Monsterrat20Grey),
              ),
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => new DecentralMallAddBlackList()));},
                  child: new Text("Vendors",
                      style: AppStyle.Montserrat40DarkBold)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text("75 ", style: AppStyle.Montserrat14Bold),
                  new Text("WhiteList", style: AppStyle.Montserrat14GreenBold),
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text("2 ", style: AppStyle.Montserrat14RedBold),
                  new Text("Black List", style: AppStyle.Montserrat14RedBold),
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text("250 ", style: AppStyle.Montserrat14CyanBold),
                  new Text("Fraud", style: AppStyle.Montserrat14CyanBold),
                ],
              ),
            ]),
      ),
    );
  }
}
