import 'package:flutter/material.dart';
import './DecentralMallWhiteCustomer.dart';
import '../Styles/AppStyle.dart';

class DecentralMallAddBlackList extends StatefulWidget {
  DecentralMallAddBlackList({Key key}) : super(key: key);

  @override
  _DecentralMallAddBlackListState createState() =>
      new _DecentralMallAddBlackListState();
}

class _DecentralMallAddBlackListState extends State<DecentralMallAddBlackList>
    with TickerProviderStateMixin {
  var controller;

  @override
  void initState() {
    controller = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        title: new Text("Merchant", style: AppStyle.Montserrat40DarkBold),
        bottom: new TabBar(
          controller: controller,
          tabs: <Tab>[
        Tab(child: new Text("White List", style: AppStyle.Montserrat12DarkBlueSemiBold)),
        Tab(child: new Text("Black List", style: AppStyle.Montserrat12DarkBlueSemiBold)),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          new DecentralMallWhiteCustomer(),
          Icon(Icons.directions_transit),
        ],
      ),
    );
  }
}
