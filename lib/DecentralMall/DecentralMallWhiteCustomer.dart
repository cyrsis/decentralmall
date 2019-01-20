import 'package:flutter/material.dart';
import 'package:fluttersandbox2018/Bloc/GlobalBloc.dart';
import 'package:fluttersandbox2018/Whatappsclone/models/WhatAppschat_model.dart';

class DecentralMallWhiteCustomer extends StatefulWidget {
  DecentralMallWhiteCustomer({Key key}) : super(key: key);

  @override
  _DecentralMallWhiteCustomerState createState() =>
      new _DecentralMallWhiteCustomerState();
}

class _DecentralMallWhiteCustomerState
    extends State<DecentralMallWhiteCustomer> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) => new Column(
              children: <Widget>[
                new Divider(
                  height: 10.0,
                ),
                new ListTile(
                  leading: new CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage: new NetworkImage(dummyData[i].avatarUrl),
                  ),
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        dummyData[i].name,
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                      new Text(
                        dummyData[i].time,
                        style:
                            new TextStyle(color: Colors.grey, fontSize: 14.0),
                      ),
                    ],
                  ),
                  subtitle: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        dummyData[i].message,
                        style:
                            new TextStyle(color: Colors.grey, fontSize: 15.0),
                      ),
                      IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () async {
                            globalBloc.inOn(false);
                            print("${await globalBloc.outOn.first}");

                            print("Add Clicks");
                          })
                    ],
                  ),
                )
              ],
            ),
      ),
    );
  }
}
