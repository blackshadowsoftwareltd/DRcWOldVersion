import 'package:dronercworld/Home/Home.dart';
import 'package:dronercworld/Splash/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Home/Services.dart';
import 'Home/Widgets.dart';
import 'ModelList/ModelListWidgets.dart';
import 'Preview/AppBars.dart';
import 'Preview/PreViewWidgets.dart';
import 'Services/FirebaseServices.dart';
import 'Services/ServicesWidgets.dart';
import 'Splash/Widgets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Statez());
}

class Statez extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: HomeServices()),
          ChangeNotifierProvider.value(value: HomeWidgets()),
          ChangeNotifierProvider.value(value: ModelListWidgets()),
          ChangeNotifierProvider.value(value: FirebaseServices()),
          ChangeNotifierProvider.value(value: ServicesWidgets()),
          ChangeNotifierProvider.value(value: AppBars()),
          ChangeNotifierProvider.value(value: PreViewWidgets()),
          ChangeNotifierProvider.value(value: SplashWidgets()),
        ],
        child: MaterialApp(
            title: 'Drone & RC World',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(primaryColor: Colors.green),
            home: Home()));
  }
}
