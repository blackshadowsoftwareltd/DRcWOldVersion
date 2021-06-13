import 'package:dronercworld/ModelList/ModelListPage.dart';
import 'package:flutter/material.dart';

import 'Widgets.dart';

/// Brand List
class BrandList extends StatelessWidget {
  final double height, width;

  const BrandList({
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Container(
        height: isPortrait ? height / 7 * 3.2 : height / 1.9,
        decoration: BoxDecoration(
            color: Colors.grey[100],
            border: Border.all(color: Colors.grey[400], width: 2)),
        child: ListView(padding: EdgeInsets.all(3), children: [
          HomeWidgets().brand(context, 'Brands'),
          isPortrait
              ? Container(
                  height: 120,
                  // margin: EdgeInsets.symmetric(vertical: 3),
                  // color: Colors.green,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BrandCard(context, 'Drone', 'DJI', 'brandDJI.png',
                            'DJI', isPortrait),
                        BrandCard(context, 'Drone', 'EACHINE',
                            'brandEACHINE.png', 'EACHINE', isPortrait),
                        BrandCard(context, 'Drone', 'FIMI', 'brandFIMI.png',
                            'FIMI', isPortrait)
                      ]))
              : Container(
                  height: 120,
                  // margin: EdgeInsets.symmetric(vertical: 3),
                  // color: Colors.green,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BrandCard(context, 'Drone', 'DJI', 'brandDJI.png',
                            'DJI', isPortrait),
                        BrandCard(context, 'Drone', 'EACHINE',
                            'brandEACHINE.png', 'EACHINE', isPortrait),
                        BrandCard(context, 'Drone', 'FIMI', 'brandFIMI.png',
                            'FIMI', isPortrait),
                        BrandCard(context, 'Drone', 'HUBSAN', 'brandHUBSAN.png',
                            'HUBSAN', isPortrait)
                      ])),
          isPortrait
              ? Container(
                  height: 120,
                  // margin: EdgeInsets.symmetric(vertical: 3),
                  // color: Colors.green,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BrandCard(context, 'Drone', 'HUBSAN', 'brandHUBSAN.png',
                            'HUBSAN', isPortrait),
                        BrandCard(context, 'Drone', 'JJRC', 'brandJJRC.png',
                            'JJRC', isPortrait),
                        BrandCard(context, 'Drone', 'SHAREFUNBAY',
                            'brandSHAREFUNBAY.png', 'SHAREFUNBAY', isPortrait)
                      ]))
              : Container(
                  height: 120,
                  // margin: EdgeInsets.symmetric(vertical: 3),
                  // color: Colors.green,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BrandCard(context, 'Drone', 'JJRC', 'brandJJRC.png',
                            'JJRC', isPortrait),
                        BrandCard(context, 'Drone', 'SHAREFUNBAY',
                            'brandSHAREFUNBAY.png', 'SHAREFUNBAY', isPortrait),
                        BrandCard(context, 'Drone', 'Xiaomi', 'brandXiaomi.png',
                            'Xiaomi', isPortrait)
                      ])),
          isPortrait
              ? Container(
                  height: 120,
                  // margin: EdgeInsets.symmetric(vertical: 3),
                  // color: Colors.green,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BrandCard(context, 'Drone', 'Xiaomi', 'brandXiaomi.png',
                            'Xiaomi', isPortrait)
                      ]))
              : Container()
        ]));
  }

  Widget BrandCard(BuildContext context, String category, String brandName,
          String imgPath, String brandId, bool isPortrait) =>
      GestureDetector(
        onTap: () {
          print(brandId);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ModelListPage(
                        category: category,
                        brandName: brandName,
                        brandRef: brandId,
                      )));
        },
        child: Container(
            height: 120,
            width: isPortrait ? width / 3 - 16 : width / 4 - 16,
            // color: Colors.red,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(3),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 5,
                      spreadRadius: 2)
                ],
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: 80,
                      // width: 160,
                      alignment: Alignment.center,
                      child: Image.asset('images/$imgPath',
                          fit: BoxFit.fitHeight)),
                  Text('$brandName',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold))
                ])),
      );
}
