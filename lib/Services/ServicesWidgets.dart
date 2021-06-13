import 'package:dough/dough.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ServicesWidgets extends ChangeNotifier {
  Widget CustomAppBar(BuildContext context, String title) => DoughRecipe(
        data: DoughRecipeData(adhesion: 5, viscosity: 50000),
        child: PressableDough(
          child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.fromLTRB(15, 35, 15, 5),
              padding: EdgeInsets.symmetric(horizontal: 5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 2,
                        spreadRadius: 2)
                  ]),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,size: 20,
                          color: Colors.green[900],
                        ),
                        onPressed: () => Navigator.pop(context)),
                    Spacer(flex: 3),
                    Text(title,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.green[900],
                            fontWeight: FontWeight.w500)),
                    Spacer(flex: 5)
                  ])),
        ),
      );

  Widget Progresser() => SpinKitFadingCube(
    color: Colors.green[700],
    size: 40.0,
  );
}
