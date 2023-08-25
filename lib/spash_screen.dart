import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:plant_disease_detector/src/home_page/home.dart';

import 'custom_page_route.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      // print(widget.results);
      Navigator.pushReplacement(context, CustomPageRoute(child: Home()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: LottieBuilder.asset('assets/plant_loading.json', height: 250, width: 150,),
    ));
  }
}