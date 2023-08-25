import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// import '../../../services/disease_provider.dart';

class Aesthetic extends SliverFixedExtentList {
  Aesthetic(double height, {Key? key})
      : super(
          key: key,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, index) {
              final List<String> images = [
                'assets/images/cool.jpg',
                'assets/images/face.jpg',
                'assets/images/glass.jpg',
                'assets/images/great.jpg',
                'assets/images/mural.jpg',
                'assets/images/peakpx.jpg',
                'assets/images/rose.jpg',
                'assets/images/rose.jpg',
                'assets/images/star.jpg',
                'assets/images/sunflower.jpg',
                'assets/images/thread.jpg',
                'assets/images/umbrella.jpg'
              ];

              List<Widget> generateImageContainer() {
                return images
                    .map((element) => Container(
                          child: Container(
                            
                            width: 365,
                            decoration: BoxDecoration(
                              
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                image: DecorationImage(
                                    image: AssetImage(element),
                                    fit: BoxFit.cover),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.shade500,
                                      offset: Offset(4, 4),
                                      blurRadius: 15,
                                      spreadRadius: 1.0),
                                  BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(-4.0, -4.0),
                                      blurRadius: 15,
                                      spreadRadius: 1.0),
                                ]),
                          ),
                        ))
                    .toList();
              }

              return Container(
                margin: EdgeInsets.only(top: 10, left: 0),
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: CarouselSlider(
                            items: generateImageContainer(),
                            options: CarouselOptions(
                                enlargeCenterPage: true,
                                autoPlay: true,
                                aspectRatio: 18 / 8))
                        // Container(
                        //   width: 365,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.all(
                        //       Radius.circular(20),
                        //     ),
                        //     image: DecorationImage(
                        //         image:
                        //             AssetImage('assets/images/wateronleaves.jpg'),
                        //         fit: BoxFit.cover),
                        //   ),
                        // ),
                        ),
                  ],
                ),
              );
            },
            childCount: 1,
          ),
          itemExtent: 175,
        );
}
