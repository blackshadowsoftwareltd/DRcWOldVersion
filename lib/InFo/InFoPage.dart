import 'package:flutter/material.dart';

import 'Widgets.dart';

class InFoPage extends StatelessWidget {
  final String appTitle;

  InFoPage({this.appTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(appTitle), centerTitle: true),
        body: appTitle == 'Terms & Condition'
            ? TermsCondition()
            : appTitle == 'Privacy Policy'
                ? PrivacyPolicy()
                : appTitle == 'About App'
                    ? AboutApp()
                    : Container());
  }
}
