import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttersandbox2018/DecentralMall/DecentralMallAddBlackList.dart';
import 'package:fluttersandbox2018/Services/FireStoreServices.dart';
import 'package:fluttersandbox2018/Styles/AppColors.dart';
import 'package:fluttersandbox2018/Styles/AppImage.dart';
import 'package:fluttersandbox2018/Styles/AppStyle.dart';

class DecentralMallUserOrMerchTwo extends StatefulWidget {
  DecentralMallUserOrMerchTwo({Key key}) : super(key: key);

  @override
  _DecentralMallUserOrMerchTwoState createState() =>
      new _DecentralMallUserOrMerchTwoState();
}

class _DecentralMallUserOrMerchTwoState
    extends State<DecentralMallUserOrMerchTwo> {
  var Score = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new StreamBuilder<QuerySnapshot>(
          stream: FireStoreService.blockpassSnapShot,
          builder: (BuildContext context, snapshot) {
            if (!snapshot.hasData) return const Text('loading');
            return _buildBody(context, snapshot);
          }),
    );
  }

  _buildBody(BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
    return new Center(
      child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => new DecentralMallAddBlackList()));
                },
                child:
                    new Text("Vendors", style: AppStyle.Montserrat40DarkBold)),
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
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: new Text(" or", style: AppStyle.Monsterrat20Grey),
            ),
            InkWell(
                splashColor: AppColors.TroutGrey,
                onTap: () {},
                child:
                    new Text("Customer", style: AppStyle.Montserrat40DarkBold)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image.asset(AppImage.decntralmarket_blockpasslogo,
                    width: 80, height: 60, fit: BoxFit.contain),
//                  new Text("${Score}",style:AppStyle.Montserrat14GreenBold,)
                _buildtemp(context, snapshot.data.documents),
              ],
            ),
          ]),
    );
  }

  _buildtemp(BuildContext context, List<DocumentSnapshot> documents) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: new Text('${documents[0].data.values.elementAt(1)}'),
    );
  }
}

class BlockPassScore {
  final String name;
  final int votes;
  final DocumentReference reference;

  BlockPassScore.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['name'] != null),
        assert(map['votes'] != null),
        name = map['name'],
        votes = map['votes'];

  BlockPassScore.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Record<$name:$votes>";
}
