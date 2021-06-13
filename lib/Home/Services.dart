import 'package:flutter/cupertino.dart';

class HomeServices extends ChangeNotifier {
  double xOffset = 0,
      yOffset = 0,
      scaleFactor = 1,
      height,
      width,
      scrollValue = 0;

  bool isDrawerOpen = false;

  double get getXOffset => xOffset;

  double get getYOffset => yOffset;

  double get getScaleFactor => scaleFactor;

  double get getHeight => height;

  double get getWidth => width;

  bool get getIsDrawerOpen => isDrawerOpen;

  double get getScrollValue => scrollValue;

  void setValue(double value) {
    scrollValue = value;
    notifyListeners();
  }

  void HeightWidth(double h, w) {
    height = h;
    width = w;
    notifyListeners();
  }

  void DrawerOpen() {
    xOffset = 250;
    yOffset = 150;
    scaleFactor = .6;
    isDrawerOpen = true;
    notifyListeners();
  }

  void DrawerClose() {
    xOffset = 0;
    yOffset = 0;
    scaleFactor = 1;
    isDrawerOpen = false;
    notifyListeners();
  }
}
