import 'package:dronercworld/Home/BodyContents.dart';
import 'package:dronercworld/Home/Services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'HeaderBackground.dart';
import 'Widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Status Bar
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.green));

    /// Variables
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    final orientation = MediaQuery.of(context).orientation;
    HomeServices().HeightWidth(_height, _width);

    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: _width,
          height: _height,
          alignment: Alignment.topCenter,
          child: Stack(
            children: [
              HeaderBackground(),
              BodyContents(),
              Positioned(child: HomeWidgets().HomeAppBar(context))
            ],
          ),
        ));

    // return Scaffold(
    //     backgroundColor: Colors.white,
    //     body: Stack(children: [
    //       ListView(padding: EdgeInsets.fromLTRB(3, 90, 3, 3), children: [
    //         HomeWidgets().brand(context, 'Drone'),
    //         BrandList(height: _height, width: _width),
    //         HomeWidgets().brand(context, 'RC'),
    //         RCList(height: _height, width: _width)
    //       ]),
    //       Positioned(child: HomeWidgets().HomeAppBar(context))
    //     ]));
  }
}
