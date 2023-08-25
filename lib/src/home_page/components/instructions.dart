import 'package:flutter/material.dart';

class InstructionsSection extends SliverFixedExtentList {
  InstructionsSection(Size size, {Key? key})
      : super(
          key: key,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, index) {
              return Container(
                padding: EdgeInsets.only(left: 22),
                child: ListView(
                  children: [
                    ListTile(
                        leading: CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage('assets/images/cool.jpg'),
                        ),
                        title: Text(
                          'Take/Select a photo of an affected plant by tapping the camera button below',
                          style: TextStyle(color: Colors.black87, fontFamily: 'SourcesansMedium'),
                        )),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage('assets/images/cool.jpg'),
                      ),
                      title: Text(
                        'Give it a short while before you can get a suggestion of the disease',
                        style: TextStyle(color: Colors.black87, fontFamily: 'SourcesansMedium'),
                      ),
                    ),
                  ],
                ),
              );
            },
            childCount: 1,
          ),
          itemExtent: 130,
        );
}
