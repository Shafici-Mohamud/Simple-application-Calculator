import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "App xisaabeed fudud",
    home: SIForm(),
  ));
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SIFFORMSTATE();
  }
}

class _SIFFORMSTATE extends State<SIForm> {
  var _currencies = ["GAALKACYO", "garoowe", "booosaaso", "others"];

  final _minumpadding = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Simple interest aplication"),
        ),
        body: Container(
          margin: EdgeInsets.all(_minumpadding * 2),
          child: Column(
            children: <Widget>[
              getImageAsset(),

              Padding(
                padding: EdgeInsets.only(top:  _minumpadding, bottom:  _minumpadding),
                child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Princiaple',
                    hintText: 'gali wax',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                        )
                        ),
              )),

         Padding(
          padding: EdgeInsets.only(top: _minumpadding, bottom: _minumpadding),
            child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Rate of interest',
                    hintText: 'In',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ))
            ],
          ),
        ));
  }

  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('images/image.png');
    Image image = Image(
      image: assetImage,
      width: 125.0,
      height: 125.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.all(_minumpadding * 10),
    );
  }
}
