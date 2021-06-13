import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Services.dart';

class HeaderBackground extends StatelessWidget {
  final aspectRatio = 8 / 5;
  double _width, value;
  bool isPortrait;

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    value = context.watch<HomeServices>().getScrollValue;
    isPortrait = Orientation.portrait == MediaQuery.of(context).orientation;

    return Container(
      // color: Color(0xff259f50),
      color: Colors.orange,
      height: 100 + _width,
      child: Stack(
        children: [
          zBackGround(),
          zPlaneR(),
          zPlaneL(),
          zHelicopter(),
          zTruckExc(),
          zCar(),
          zTruck(),
          zFlyDrone(),
          zPPlaneL(),
          zPPlaneR(),
        ],
      ),
    );
  }

  Widget zHelicopter() => Positioned(
      left: isPortrait ? -320 + value : -150 + value * 2,
      top: isPortrait ? 250 - value / 1.5 : 120,
      child: Container(
          width: 100,
          height: 140,
          child: Image.asset('images/header/helicopter.png', fit: BoxFit.contain)));

  Widget zPlaneL() => Positioned(
      left: 120 - value,
      top: isPortrait ? 100 : 110,
      child: Container(
          width: 50,
          height: 40,
          child: Image.asset('images/header/planeL.png', fit: BoxFit.contain)));

  Widget zPlaneR() => Positioned(
      left:isPortrait? -150 + value * 4: -150 + value * 3,
      top: isPortrait?230 - value / 1.8:260 - value / 1.5,
      child: Container(
          width: 50,
          height: 40,
          child: Image.asset('images/header/planeR.png', fit: BoxFit.contain)));

  Widget zPPlaneR() => Positioned(
      left: isPortrait ? -100 + value * 3 : -80 + value * 5,
      top: isPortrait ? 170 - value / 1.8 : 180 - value /2.5,
      child: Container(
          width: 80,
          height: 50,
          child: Image.asset('images/header/pPlaneR.png', fit: BoxFit.contain)));

  Widget zPPlaneL() => Positioned(
      right: isPortrait ? value : 50 + value * 2,
      top: isPortrait ? 120 - value / 2 : 140 - value / 2,
      child: Container(
          width: value / 1.3,
          height: 70,
          child: Image.asset('images/header/pPlaneL.png', fit: BoxFit.contain)));

  Widget zFlyDrone() => Positioned(
      left: value < 165 ? 10 : 175 - value,
      top: value < 165 ? 390 - value / .6 : 115,
      child: Container(
          width: 100 - value / 8,
          height: 70,
          child: Image.asset('images/header/flyDrone.png', fit: BoxFit.contain)));

  Widget zTruck() => Positioned(
      right: isPortrait ? -110 + value / 1.5 : 50 + value / 1,
      top: isPortrait ? 270 - value / 3 : 260 - value / 3,
      child: Container(
          width: 100,
          height: 70,
          child: Image.asset('images/header/truck.png', fit: BoxFit.contain)));

  Widget zTruckExc() => Positioned(
      left: isPortrait ? 10 : 50,
      top: isPortrait ? 200 - value / 3 : 190 - value / 3,
      child: Container(
          width: 150,
          height: 180,
          child: Image.asset('images/header/truckExc.png', fit: BoxFit.contain)));

  Widget zCar() => Positioned(
      top: isPortrait ? 350 - value / 5 : 260 + value / 20,
      right: isPortrait ? 5 + value / 7 : 250 + value,
      child: Container(
          width: 150,
          height: 90,
          child: Image.asset('images/header/car.png', fit: BoxFit.contain)));

  Widget zBackGround() => Positioned(
      left: 0,
      top: -value / 3,
      right: 0,
      child: Container(
          height: isPortrait ? _width + 100 : _width - 300,
          child: Image.asset('images/header/background.png', fit: BoxFit.cover)));
}
