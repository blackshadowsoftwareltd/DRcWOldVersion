import 'package:dronercworld/Services/FirebaseServices.dart';
import 'package:flutter/material.dart';

class SplashWidgets extends ChangeNotifier {
  Widget AddData() => FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        print('pressed');
        FirebaseServices().addData();
      });

  Widget ZImages(String imgPath) => Container(
      height: 160,
      width: 160,
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      child: Image.asset('images/$imgPath', fit: BoxFit.fitHeight));
}
