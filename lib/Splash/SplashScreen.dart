import 'package:dronercworld/Home/Home.dart';
import 'package:dronercworld/Services/FirebaseServices.dart';
import 'package:flutter/material.dart';

import 'Widgets.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nextrScreen();
  }

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(children: [
              Container(height: _height / 6),
              SplashWidgets().ZImages('plane.png'),
              Container(height: _height / 30),
              SplashWidgets().ZImages('drone.png'),
              Container(height: _height / 30),
              Container(
                  width: _width,
                  alignment: Alignment.center,
                  child: Text('Drone & RC World',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.green[800],
                          fontWeight: FontWeight.w700))),
              Container(height: _height / 6)
            ])));
  }

  nextrScreen() async {
    await Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    });
  }
}
