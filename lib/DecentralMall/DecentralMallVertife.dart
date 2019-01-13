import 'package:flutter/material.dart';
import '../DecentralMall/DecentralMallUserOrMerch.dart';
import '../Styles/AppStyle.dart';
import 'package:barcode_scan/barcode_scan.dart';
import '../Util/Widget_Utils.dart';
import 'package:flutter/services.dart';

class DecentralMallVertife extends StatefulWidget {
  DecentralMallVertife({Key key}) : super(key: key);

  @override
  _DecentralMallVertifeState createState() => new _DecentralMallVertifeState();
}

class _DecentralMallVertifeState extends State<DecentralMallVertife> {
  String barcode = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            new SizedBox(height: 200.0),
            new Text("Vertification Page",
                style: AppStyle.Montserrat20DarkLightBlue),
            new Text("Power & Vertify By Blockpass",
                style: AppStyle.Montserrat8DarkBlue),
            SizedBox(height: 100.0),
            new RaisedButton(
              color: Colors.transparent,
              splashColor: Colors.blueGrey,
              onPressed: scan,
              child: new Icon(Icons.filter_center_focus,
                  size: 120.0, color: Colors.grey),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
              child: Text(
                barcode,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      setState(() => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => new DecentralMallUserOrMerch())));
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException {
      setState(() => this.barcode =
          'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }
}
