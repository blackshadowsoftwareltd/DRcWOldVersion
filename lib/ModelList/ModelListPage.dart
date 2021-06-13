import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dronercworld/ModelList/ModelListWidgets.dart';
import 'package:dronercworld/Services/FirebaseServices.dart';
import 'package:dronercworld/Services/ServicesWidgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ModelListPage extends StatelessWidget {
  final String category, brandRef, brandName;

  ModelListPage({this.category, this.brandRef, this.brandName});

  String modelName,
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
      img5,
      img6;

  int price;
  bool isStock = true;

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('DRONE')
                .doc(category)
                .collection(brandRef)
                .snapshots(),
            builder: (context, snapShot) {
              if (snapShot.hasError) return Text(snapShot.error);
              if (snapShot.connectionState == ConnectionState.active) {
                // print(snapShot.data.docs.length);
                return StaggeredGridView.countBuilder(
                    padding: EdgeInsets.fromLTRB(5, 95, 3, 5),
                    crossAxisCount: isPortrait ? 2 : 3,
                    itemCount: snapShot.data.docs.length,
                    itemBuilder: (context, index) {
                      DocumentSnapshot data = snapShot.data.docs[index];
                      modelName = data['modelName'];
                      modelId = data['modelId'];
                      buyLink = data['buyLink'];
                      price = data['price'];
                      modelIcon = data['modelIcon'];
                      isStock = data['isStock'];
                      img1 = data['img1'];
                      img2 = data['img2'];
                      img3 = data['img3'];
                      img4 = data['img4'];
                      img5 = data['img5'];
                      img6 = data['img6'];
                      description1 = data['description1'];
                      description2 = data['description2'];
                      description3 = data['description3'];
                      description4 = data['description4'];
                      description5 = data['description5'];
                      description6 = data['description6'];

                      return ModelCard(
                          modelName: modelName,
                          modelIcon: modelIcon,
                          modelId: modelId,
                          buyLink: buyLink,
                          price: price,
                          isStock: isStock,
                          img1: img1,
                          img2: img2,
                          img3: img3,
                          img4: img4,
                          img5: img5,
                          img6: img6,
                          description1: description1,
                          description2: description2,
                          description3: description3,
                          description4: description4,
                          description5: description5,
                          description6: description6);
                    },
                    staggeredTileBuilder: (index) => StaggeredTile.count(1, 1),
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5);
              }
              return ServicesWidgets().Progresser();
            },
          ),
          ServicesWidgets().CustomAppBar(context, brandName),
        ],
      ),
    );
  }
}
