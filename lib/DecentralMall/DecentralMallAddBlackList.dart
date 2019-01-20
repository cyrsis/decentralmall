import 'package:flutter/material.dart';
import 'package:fluttersandbox2018/Bloc/GlobalBloc.dart';
import 'package:fluttersandbox2018/DecentralMall/DecentralMallWhiteCustomer.dart';
import 'package:fluttersandbox2018/Styles/AppStyle.dart';
import 'package:fluttersandbox2018/Whatappsclone/models/WhatAppschat_model.dart';

class DecentralMallAddBlackList extends StatefulWidget {
  DecentralMallAddBlackList({Key key}) : super(key: key);

  @override
  _DecentralMallAddBlackListState createState() =>
      new _DecentralMallAddBlackListState();
}

class _DecentralMallAddBlackListState extends State<DecentralMallAddBlackList>
    with TickerProviderStateMixin {
  var controller;

  bool isshowBlacklist = true;

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
            Tab(
                child: new Text("White List",
                    style: AppStyle.Montserrat12DarkBlueSemiBold)),
            Tab(
                child: new Text("Black List",
                    style: AppStyle.Montserrat12DarkBlueSemiBold)),
          ],
        ),
      ),
      body: StreamBuilder<bool>(
        initialData: true,
        stream: globalBloc.onoff,
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          print("SnapShot "+ snapshot.data.toString());
         return  new TabBarView(
            controller: controller,
            physics: ScrollPhysics(),
            children: [
              new DecentralMallWhiteCustomer(),
              snapshot.data ? _buildEmptyList() : _buildBlackList(),
            ],
          );
        },
      ),
    );
  }

  _buildBlackList() {
    return new ListView.builder(
      itemCount: BaddummyData.length,
      itemBuilder: (context, i) => new Column(
            children: <Widget>[
              new Divider(
                height: 10.0,
              ),
              new ListTile(
                leading: new CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: new NetworkImage(BaddummyData[i].avatarUrl),
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      BaddummyData[i].name,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    ),
                    new Text(
                      BaddummyData[i].time,
                      style: new TextStyle(color: Colors.grey, fontSize: 14.0),
                    ),
                  ],
                ),
                subtitle: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      dummyData[i].message,
                      style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                    ),
                    IconButton(icon: Icon(Icons.add), onPressed: () {})
                  ],
                ),
              )
            ],
          ),
    );
  }

  _buildEmptyList() {
    return Container(
        child: IconButton(icon: Icon(Icons.add), onPressed: () {}));
  }
}
