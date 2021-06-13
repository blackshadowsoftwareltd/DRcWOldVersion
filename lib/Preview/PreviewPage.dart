import 'package:dronercworld/Preview/AppBars.dart';
import 'package:dronercworld/Preview/PreViewWidgets.dart';
import 'package:flutter/material.dart';

class PreviewPage extends StatelessWidget {
  final String modelName,
      modelId,
      modelIcon,
      buyLink,
      description1,
      description2,
      description3,
      description4,
      description5,
      description6,
      img1,
      img2,
      img3,
      img4,
      img6,
      img5;

  final int price;
  final bool isStock;

  PreviewPage(
      {this.modelName,
      this.modelId,
      this.modelIcon,
      this.buyLink,
      this.isStock,
      this.description1,
      this.description2,
      this.description3,
      this.description4,
      this.description5,
      this.description6,
      this.img1,
      this.img2,
      this.img3,
      this.img4,
      this.img5,
      this.img6,
      this.price});

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.only(top: isPortrait ? 195 : 135),
            children: [
              PreViewWidgets().BuyNow(context, buyLink, isStock),
              PreViewWidgets().DemoImage(context, img1),
              PreViewWidgets().DemoText(description1),
              PreViewWidgets().DemoImage(context, img2),
              PreViewWidgets().DemoText(description2),
              PreViewWidgets().DemoImage(context, img3),
              PreViewWidgets().DemoText(description3),
              PreViewWidgets().DemoImage(context, img4),
              PreViewWidgets().DemoText(description4),
              PreViewWidgets().DemoImage(context, img5),
              PreViewWidgets().DemoText(description5),
              PreViewWidgets().DemoImage(context, img6),
              PreViewWidgets().DemoText(description6),
            ],
          ),
          Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: AppBars()
                  .PreviewAppBar(context, modelName, modelIcon, price)),
        ],
      ),
    );
  }
}
