import 'package:flutter/material.dart';


class GreetingSection extends SliverFixedExtentList {
  GreetingSection(double height, {Key? key})
      : super(
          key: key,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, index) {
              return Container(
                margin: EdgeInsets.only(top: 1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  color: Color(0xff4BA419),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1, fontFamily: 'Alegreya-Black'),
                    )
                  ],
                ),
              );
            },
            childCount: 1,
          ),
          itemExtent: 80,
        );
}
