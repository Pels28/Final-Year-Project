import 'package:flutter/material.dart';

class TitleSection extends SliverFixedExtentList {
  TitleSection(String title, double height, {Key? key})
      : super(
          key: key,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 22, top: 15, bottom: 0),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: (0.6 * height),
                          fontFamily: 'Alegreya-Black',
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
            childCount: 1,
          ),
          itemExtent: 50,
        );
}
