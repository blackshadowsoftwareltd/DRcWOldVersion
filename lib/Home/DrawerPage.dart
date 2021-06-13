import 'package:dronercworld/Home/Widgets.dart';
import 'package:dronercworld/InFo/InFoPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.green));
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: HomeWidgets().HomeMenuButton(context, Colors.green[900]),
              ),
              Spacer(flex: 2),
              // SplashWidgets().ZImages('Icon.png'),
              Spacer(flex: 1),
              ListTile(
                  title: _label('Terms & Condition'),
                  onTap: () {
                    print('Terms & Condition');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                InFoPage(appTitle: 'Terms & Condition')));
                  }),
              ListTile(
                  title: _label('Privacy Policy'),
                  onTap: () {
                    print('Privacy Policy');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                InFoPage(appTitle: 'Privacy Policy')));
                  }),
              ListTile(
                  title: _label('About App'),
                  onTap: () {
                    print('About App');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                InFoPage(appTitle: 'About App')));
                  }),
              Spacer(flex: 5)
            ])));
  }

  Widget _label(String label) =>
      Text(label, style: TextStyle(color: Colors.green[900], fontSize: 18));
}
