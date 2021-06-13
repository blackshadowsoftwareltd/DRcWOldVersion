import 'package:dough/dough.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Services.dart';

class HomeWidgets extends ChangeNotifier {
  Widget HomeAppBar(BuildContext context) => DoughRecipe(
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
                    HomeWidgets().HomeMenuButton(context, Colors.green[900]),
                    Spacer(flex: 3),
                    Text('Drone & RC World',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.green[900],
                            fontWeight: FontWeight.w500)),
                    Spacer(flex: 5)
                  ]))));

  Widget HomeMenuButton(BuildContext context, Color color) => DoughRecipe(
        data: DoughRecipeData(adhesion: 5, viscosity: 50000),
        child: PressableDough(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
                borderRadius: BorderRadius.circular(50),
                highlightColor: Colors.green.withOpacity(.1),
                splashColor: Colors.green.withOpacity(.5),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                      Provider.of<HomeServices>(context, listen: true)
                                  .getIsDrawerOpen ==
                              true
                          ? Icons.home_rounded
                          : Icons.menu,
                      color: color,
                      size: 25),
                ),
                onTap: () {
                  if (Provider.of<HomeServices>(context, listen: false)
                          .getIsDrawerOpen !=
                      true)
                    Provider.of<HomeServices>(context, listen: false)
                        .DrawerOpen();
                  else if (Provider.of<HomeServices>(context, listen: false)
                          .getIsDrawerOpen ==
                      true)
                    Provider.of<HomeServices>(context, listen: false)
                        .DrawerClose();
                }),
          ),
        ),
      );

  Widget brand(BuildContext context, String name) => Container(
      height: 30,
      color: Colors.white,
      alignment: Alignment.center,
      child: Text(name,
          style: TextStyle(
              fontSize: 18,
              color: Colors.grey[700],
              fontWeight: FontWeight.w500)));
}
