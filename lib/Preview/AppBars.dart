import 'package:dough/dough.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBars extends ChangeNotifier {
  Widget PreviewAppBar(
      BuildContext context, String modelName, String modelIcon, int price) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    // String _price = price == 0 ? '' : 'Price \$ $price';
    return DoughRecipe(
      data: DoughRecipeData(adhesion: 5, viscosity: 50000),
      child: PressableDough(
        child: Container(
            height: isPortrait ? 150 : 90,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(10, 35, 10, 0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 5,
                      spreadRadius: 3)
                ]),
            child: isPortrait
                ? Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 5, 5),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AppBars().BackPressed(context),
                                AppBars()
                                    .AppTitle(context, isPortrait, modelName),
                              ]),
                          Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    AppBars().Prices(price),
                                    AppBars().ModelLogo(modelIcon, 95)
                                  ]))
                        ]))
                : Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppBars().BackPressed(context),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 15, bottom: 15),
                                  child: AppBars().Prices(price))
                            ]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, right: 20),
                                child: AppBars()
                                    .AppTitle(context, isPortrait, modelName),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 5, right: 5),
                                child: AppBars().ModelLogo(modelIcon, 75),
                              )
                            ])
                      ]))),
      ),
    );
  }

  Widget BackPressed(BuildContext context) => IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.green[900],
        size: 20,
      ),
      onPressed: () => Navigator.pop(context));

  Widget AppTitle(BuildContext context, bool isPortait, modelName) => Container(
      width: isPortait
          ? MediaQuery.of(context).size.width - 80
          : MediaQuery.of(context).size.width - 280,
      child: Text(modelName,
          overflow: isPortait ? TextOverflow.ellipsis : TextOverflow.visible,
          style: TextStyle(
              fontSize: 16,
              color: Colors.grey[900],
              fontWeight: FontWeight.w500)));

  Widget Prices(int price) {
    return price == 0
        ? Text('')
        : RichText(
            text: TextSpan(
                text: 'Price \$ ',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
                children: [
                TextSpan(
                    text: '$price',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                        fontWeight: FontWeight.w600))
              ]));
  }

  Widget ModelLogo(String modelIcon, double value) => Container(
        height: value,
        width: value,
        // color: Colors.green,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(modelIcon),
        ),
      );
}
