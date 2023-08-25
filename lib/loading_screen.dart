import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:plant_disease_detector/spash_screen.dart';

import 'custom_page_route.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen>
    with SingleTickerProviderStateMixin {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Timer(Duration(seconds: 5), () {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => Home(),
  //       ),
  //     );
  //   },);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: LottieBuilder.asset('assets/welcome.json'),
            // Container(
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //         // opacity: 0.4,
            //         image: AssetImage(
            //           'assets/images/peakpx.jpg',
            //         ),
            //         fit: BoxFit.cover),
            //   ),
            // ),
            flex: 1,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  // padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                  padding: EdgeInsets.only(
                    top: 230,
                    left: 25,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'AGRO AI',
                        style: TextStyle(
                            color: Color(0xFF131313),
                            fontWeight: FontWeight.w600,
                            fontSize: 40,
                            fontFamily: 'Alegreya-Black',
                            letterSpacing: 2,
                            shadows: [
                              Shadow(
                                  color: Colors.white70.withOpacity(0.7),
                                  offset: Offset(4, 7),
                                  blurRadius: 15),
                            ]),
                      ),
                      Text(
                        'Mobile App',
                        style: TextStyle(
                            color: Color(0xFF131313),
                            fontWeight: FontWeight.w600,
                            fontSize: 40,
                            fontFamily: 'Alegreya-Black',
                            letterSpacing: 2,
                            shadows: [
                              Shadow(
                                  color: Colors.white70.withOpacity(0.7),
                                  offset: Offset(4, 7),
                                  blurRadius: 15),
                            ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20, bottom: 10),
                        decoration: BoxDecoration(
                            color: Color(0x994BA419),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 10, right: 5, left: 8),
                          child: Text(
                            'AgroAI turns your Android phone into a mobile crop doctor with which you can accurately detect crop diseases within seconds.'
                            'It serves as a complete solution for crop production and management.',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'SourcesansMedium',
                                fontSize: 14,
                                letterSpacing: 1),
                          ),
                        ),
                      ),
                      // Icon(
                      //   Icons.warning_amber_rounded,
                      //   color: Color(0xff222904),
                      //   size: 30,
                      // ),
                      Container(
                        margin: EdgeInsets.only(right: 20, bottom: 2),
                        decoration: BoxDecoration(
                            color: Color(0x994BA419),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20, bottom: 10, right: 5, left: 8),
                          child: Text(
                            'AgroAI only classifies the disease of a number of widely grown crops namely;'
                            'Cassava, Citrus Fruits, Cocoa, Groudnut, Tomato, Pepper, Rice,'
                            ' Wheat, Potato, Palm tree',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'SourcesansMedium',
                                fontWeight: FontWeight.w800,
                                letterSpacing: 1),
                          ),
                        ),
                      ),
                      FittedBox(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(CustomPageRoute(child: SplashScreen()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 10),
                            padding: EdgeInsets.symmetric(
                                horizontal: 130, vertical: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff4BA419)),
                            child: Row(
                              children: [
                                Text(
                                  'Continue',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'SourcesansMedium'),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.navigate_next,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class LoadingScreen extends StatefulWidget {
//   @override
//   State<LoadingScreen> createState() => _LoadingScreenState();
// }

// class _LoadingScreenState extends State<LoadingScreen> with SingleTickerProviderStateMixin {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     Timer(Duration(seconds: 5), () {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => Home(),
//         ),
//       );
//     },);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               color: Color(0xFF7D967C),
//             ),
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TypewriterAnimatedTextKit(
//                text: ['Plant Disease Detector'],
//                 textStyle: TextStyle(
//                     color: Color(0xFFF2FFEC),
//                     fontSize: 35,
//                     fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 height: 25,
//               ),
//               // SpinKitFadingCube(
//               //   color: Colors.lightGreen,
//               // ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
