import 'package:dronercworld/Home/Services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'BrandLists.dart';
import 'RCLists.dart';
import 'Widgets.dart';

class BodyContents extends StatelessWidget {
  double _width, _height, value;
  bool isPortrait;

  @override
  Widget build(BuildContext context) {
    ///
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;

    value = context.watch<HomeServices>().getScrollValue;
    isPortrait = Orientation.portrait == MediaQuery.of(context).orientation;

    ///
    return NotificationListener<ScrollNotification>(
      onNotification: (value) {
        context.read<HomeServices>().setValue(value.metrics.pixels);

        return true;
      },
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: isPortrait ? _width + 100 : _width - 300),
            HomeWidgets().brand(context, 'Drone'),
            // BrandList(height: _height, width: _width),
            HomeWidgets().brand(context, 'RC'),
            RCList(height: _height, width: _width),

          ],
        ),
      ),
    );
  }

  Widget Containerz(Color color) => Container(
      width: _width,
      height: 150,
      // margin: EdgeInsets.only(bottom: 5),
      color: color);
}
