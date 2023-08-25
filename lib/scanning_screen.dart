
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:plant_disease_detector/custom_page_route.dart';

import 'package:plant_disease_detector/src/suggestions_page/suggestions.dart';

class ScanningScreen extends StatefulWidget {
  // ScanningScreen({required this.image, required this.results});

  // File image;
  // List results;

  @override
  State<ScanningScreen> createState() => _ScanningScreenState();
}

class _ScanningScreenState extends State<ScanningScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      // print(widget.results);
      Navigator.pushReplacement(context, CustomPageRoute(child: Suggestions()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: LottieBuilder.asset('assets/scan.json'),
    ));
  }
}
