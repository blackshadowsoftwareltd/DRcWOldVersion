import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirebaseServices extends ChangeNotifier {
  final CollectionReference brandRef = FirebaseFirestore.instance
      .collection('DRONE')
      .doc('RC')
      .collection('RCCar');

  Future<void> addData() {
    String modelId = 'ERCCar20kmPerHourHighSpeedRemoteControlCarRCDrift';
    String modelName = 'RC Car 20km/h High Speed Remote Control Car RC Drift';
    int price = 31;
    String buyLink = '';
    String modelIcon = '',
        img1 = '',
        img2 = '',
        img3 = '',
        img4 = '',
        img5 = '',
        img6 = '';
    bool isStock = true;
    String des1 = '', des2 = '', des3 = '', des4 = '', des5 = '';

    return brandRef
        .doc(modelId)
        .set({
          'modelId': modelId,
          'modelName': modelName,
          'price': price,
          'modelIcon': modelIcon,
          'buyLink': buyLink,
          'isStock': isStock,
          'img1': img1,
          'img2': img2,
          'img3': img3,
          'img4': img4,
          'img5': img5,
          'img6': img6,
          'description1': des1,
          'description2': des2,
          'description3': des3,
          'description4': des4,
          'description5': des5,
          'description6': '',
        })
        .then((value) => print("Data Added"))
        .catchError((error) => print("Failed to add Data: $error"));
  }
}
