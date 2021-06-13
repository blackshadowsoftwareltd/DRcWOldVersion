import 'package:dronercworld/ModelList/ModelListPage.dart';
import 'package:flutter/material.dart';

/// RC List
class RCList extends StatelessWidget {
  final double height, width;

  const RCList({Key key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Container(
        height: 450,
        padding: EdgeInsets.all(3),
        color: Colors.white,
        child: Column(children: [
          isPortrait
              ? Container(
                  height: 200,
                  margin: EdgeInsets.symmetric(vertical: 3),
                  // color: Colors.green,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RCCard(context, 'RC', 'RC Airplane', 'RcAirplane.png',
                            'RCAirplane', isPortrait),
                        RCCard(context, 'RC', 'RC Helicopter',
                            'RcHelicopter.png', 'RCHelicopter', isPortrait)
                      ]))
              : Container(
                  height: 200,
                  margin: EdgeInsets.symmetric(vertical: 3),
                  // color: Colors.green,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RCCard(context, 'RC', 'RC Airplane', 'RcAirplane.png',
                            'RCAirplane', isPortrait),
                        RCCard(context, 'RC', 'RC Helicopter',
                            'RcHelicopter.png', 'RCHelicopter', isPortrait),
                        RCCard(context, 'RC', 'RC Excavator', 'RcExcavator.png',
                            'RCExcavator', isPortrait)
                      ])),
          isPortrait
              ? Container(
                  height: 200,
                  margin: EdgeInsets.symmetric(vertical: 3),
                  // color: Colors.green,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RCCard(context, 'RC', 'RC Excavator', 'RcExcavator.png',
                            'RCExcavator', isPortrait),
                        RCCard(context, 'RC', 'RC Car', 'RcCar.png', 'RCCar',
                            isPortrait)
                      ]))
              : Container(
                  height: 200,
                  margin: EdgeInsets.symmetric(vertical: 3),
                  // color: Colors.green,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RCCard(context, 'RC', 'RC Car', 'RcCar.png', 'RCCar',
                            isPortrait)
                      ]))
        ]));
  }

  Widget RCCard(BuildContext context, String category, String brandName,
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
            height: 200,
            width: isPortrait ? width / 2 - 20 : width / 3 - 20,
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
                      height: 160,
                      // width: 160,
                      alignment: Alignment.center,
                      child: Image.asset('images/$imgPath',
                          fit: BoxFit.fitHeight)),
                  Text('$brandName',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold))
                ])),
      );
}
