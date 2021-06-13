import 'package:dronercworld/Home/DrawerPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'HomePage.dart';
import 'Services.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Status Bar
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.green));
    bool isDragging = false;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          DrawerPage(),
          GestureDetector(
              onHorizontalDragStart: (e) => isDragging = true,
              onHorizontalDragEnd: (e) => isDragging = false,

              ///
              onHorizontalDragUpdate: (e) {
                // print(isDragging);
                if (Provider.of<HomeServices>(context, listen: false)
                            .getIsDrawerOpen !=
                        true &&
                    isDragging &&
                    e.delta.dx > 0)
                  Provider.of<HomeServices>(context, listen: false)
                      .DrawerOpen();

                ///
                else if (Provider.of<HomeServices>(context, listen: false)
                            .getIsDrawerOpen ==
                        true &&
                    isDragging &&
                    e.delta.dx < 0)
                  Provider.of<HomeServices>(context, listen: false)
                      .DrawerClose();
              },
              child: AnimatedContainer(
                  transform: Matrix4.translationValues(
                      Provider.of<HomeServices>(context, listen: true)
                          .getXOffset,
                      Provider.of<HomeServices>(context, listen: true)
                          .getYOffset,
                      0)
                    ..scale(Provider.of<HomeServices>(context, listen: true)
                        .getScaleFactor),
                  duration: Duration(milliseconds: 300),
                  child: ClipRRect(
                      borderRadius:
                          Provider.of<HomeServices>(context, listen: true)
                                      .getIsDrawerOpen !=
                                  true
                              ? BorderRadius.all(Radius.circular(0))
                              : BorderRadius.all(Radius.circular(30)),
                      child: HomePage())))
        ]));
  }
}
