import 'package:flutter/material.dart';
import './DecentralMallFeedScreen.dart';
import './DecentralMallSettingScreen.dart';
import './DecentralMallVertife.dart';
import '../Styles/AppDecoration.dart';
import '../Styles/AppImage.dart';
import '../Styles/AppStyle.dart';

class DecentralMallMainScreen extends StatefulWidget {
  DecentralMallMainScreen({Key key}) : super(key: key);

  @override
  _DecentralMallMainScreenState createState() =>
      new _DecentralMallMainScreenState();
}

class _DecentralMallMainScreenState extends State<DecentralMallMainScreen>
    with SingleTickerProviderStateMixin {
  var _tabController;

  var _selectedIndex = 0;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  final _widgetOptions = [
    new DecentralMallFeedScreen(),
    new DecentralMallSettingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: new Text(
          "Decentral Mall ",
          style: AppStyle.Montserrat20DarkLightBlue,
        ),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.send),
              onPressed: () => debugPrint("Icon Tapped!")),
          new IconButton(icon: new Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.add), title: new Text("Home")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.print), title: new Text("Setting")),
        ],
        onTap: (int index) => setState(() {
              _selectedIndex = index;
            }),
      ),
    );
  }
}
