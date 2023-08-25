import 'dart:io';

import 'package:flutter/material.dart';

class PlantImage extends StatelessWidget {
  const PlantImage({Key? key, required this.size, required this.imageFile})
      : super(key: key);

  final Size size;
  final File imageFile;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      // color: Colors.red,
      width: 360,
      height: 290,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: FileImage(imageFile), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade500,
                offset: Offset(4, 4),
                blurRadius: 15,
                spreadRadius: 1.0),
                BoxShadow(
                color: Colors.white,
                offset: Offset(-4, -4),
                blurRadius: 3,
                spreadRadius: 1.0),
          ]),
    );
    // CircleAvatar(
    //   radius: size.width * 0.35,
    //   backgroundImage: Image.file(imageFile, fit: BoxFit.cover,).image,
    // );
  }
}
