import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:plant_disease_detector/src/home_page/home.dart';

import 'custom_page_route.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  State<ErrorPage> createState() => _ErrorState();
}

class _ErrorState extends State<ErrorPage> {
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
      child: LottieBuilder.asset('assets/404.json'),
    ));
  }
  
}