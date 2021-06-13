import 'package:dough/dough.dart';
import 'package:dronercworld/Preview/PreviewPage.dart';
import 'package:flutter/material.dart';

class ModelListWidgets extends ChangeNotifier {}

class ModelCard extends StatelessWidget {
  final String
      modelName,
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

  ModelCard(
      {
      this.modelName,
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
    return GestureDetector(
        child: Container(
            margin: EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 5,
                      spreadRadius: 3)
                ]),
            child: Stack(children: [
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: Container(
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      child: Image.network(modelIcon))),
              Positioned(
                  left: 5,
                  right: 5,
                  bottom: 5,
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.5),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(modelName,
                          // overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w500))))
            ])),
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PreviewPage(

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
                      description6: description6,
                    ))));
  }
}
