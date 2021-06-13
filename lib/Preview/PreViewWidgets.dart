import 'package:flutter/material.dart';

class PreViewWidgets extends ChangeNotifier {
  Widget BuyNow(BuildContext context, String buyLink, bool isStock) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return buyLink != ''
        ? Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: 5),
            // margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(color: Colors.white,
                // borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 5,
                      spreadRadius: 3)
                ]),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(isStock ? 'In Stock' : 'Out of Stock',
                      style: TextStyle(
                          fontSize: 15,
                          color: isStock ? Colors.green : Colors.red)),
                  Spacer(flex: isPortrait ? 5 : 30),
                  OutlinedButton(
                      child: Text('More Info',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue[300],
                              fontWeight: FontWeight.w500)),
                      onPressed: () => print('pressed')),
                  Spacer(flex: 1),
                  OutlinedButton(
                      child: Text('Buy Now',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue[300],
                              fontWeight: FontWeight.w500)),
                      onPressed: () => print('pressed'))
                ]),
          )
        : Container(height: 0);
  }

  Widget DemoImage(BuildContext context, imageUrl) {
    // bool isPortrait =
    //     MediaQuery.of(context).orientation == Orientation.portrait;
    return imageUrl != ''
        ? Container(
            margin: EdgeInsets.all(5),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(imageUrl, fit: BoxFit.cover)),
          )
        : Container(height: 0);
  }

  Widget DemoText(String description) => description != ''
      ? Container(
          padding: EdgeInsets.all(5),
          child: Text(description,
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w300)),
        )
      : Container(height: 0);
}
