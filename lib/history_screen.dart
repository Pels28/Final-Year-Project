import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:plant_disease_detector/services/disease_provider.dart';
import 'package:plant_disease_detector/services/hive_database.dart';
import 'package:plant_disease_detector/src/home_page/models/disease_model.dart';

class HistoryScreen extends SliverFixedExtentList {
  HistoryScreen(Size size, BuildContext context, DiseaseService diseaseService,
      {Key? key})
      : super(
          key: key,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, index) {
              return ValueListenableBuilder<Box<Disease>>(
                valueListenable: Boxes.getDiseases().listenable(),
                builder: (context, box, _) {
                  final diseases = box.values.toList().cast<Disease>();

                  if (diseases.isNotEmpty) {
                    return Padding(
                      padding: EdgeInsets.fromLTRB((0.053 * size.height * 0.3),
                          (0.053 * size.height * 0.3), 0, 0),
                      child: Container(
                        // width: size.width,
                        height: 280,
                        child: SliverToBoxAdapter(
                          child: RepaintBoundary(
                            child: CustomScrollView(
                              slivers: [ListView.builder(
                                itemBuilder: (context, index) {
                                  return _returnHistoryScreen(
                                      diseases[index], context, diseaseService, size);
                                },
                                physics: BouncingScrollPhysics(),
                                itemCount: diseases.length,
                                scrollDirection: Axis.vertical,
                              ),
                            ]),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return _returnNothingToShow(size);
                  }
                },
              );
            },
            childCount: 1,
          ),
          itemExtent: size.height * 0.3,
        );
}

Widget _returnHistoryScreen(Disease disease, BuildContext context,
    DiseaseService diseaseService, Size size) {
  return Padding(
      padding: EdgeInsets.fromLTRB(10, 20, 10, 25),
      child: Stack(
        children: [
          Container(
            width: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0, 2),
                  blurRadius: 20.0,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(5.0),
                width: 190.0,
                height: 130.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    color: Colors.yellow),
                child: Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Image.asset(
                    'assets/images/bg.jpg',
                    width: 200.0,
                    height: 200.0,
                  ),
                ),
              ),
              Container(
                width: 200.0,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.0),
                  child: Text(
                    'Pels',
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 14.0,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Container(
                width: 200.0,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.0),
                  child: Text(
                    'Pels',
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 14.0,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Container(
                width: 200.0,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.0),
                  child: Text(
                    'Pels',
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 14.0,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Container(
                width: 200.0,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.0),
                  child: Text(
                    'Pels',
                    style: TextStyle(
                      color: Colors.black26,
                      fontSize: 14.0,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Container(
                width: 200.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 4.0),
                      child: Text('More..'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Icon(
                          Icons.arrow_right,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
}

Widget _returnNothingToShow(Size size) {
  return Padding(
      padding: EdgeInsets.fromLTRB((0.053 * size.height * 0.3),
          (0.053 * size.height * 0.3), (0.053 * size.height * 0.3), 0),
      child: Container(
          decoration: BoxDecoration(
              color: Color(0x89E6E6E6),
              borderRadius: BorderRadius.circular((0.053 * size.height * 0.3))),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, (0.066 * size.height * 0.3)),
            child: const Center(
                child: Text(
              'Nothing to show',
              style: TextStyle(color: Colors.black),
            )),
          )),
    );
}


// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       backgroundColor: Color(0xFF7D967C),
//       title: Padding(
//         padding: EdgeInsets.only(left: 5),
//         child: Text(
//           'History',
//           style: TextStyle(
//             fontFamily: 'Pacifico',
//             fontSize: 30,
//           ),
//         ),
//       ),
//     ),
//     body: Container(
//       height: 280.0,
//       child: ListView.builder(
//         itemBuilder: (context, index) {
//           return _returnHistoryScreen(
//               diseases[index], context, diseaseService, size);
//         },
//         physics: BouncingScrollPhysics(),
//         itemCount: diseases.length,
//         scrollDirection: Axis.vertical,
//       ),
//     ),
//   );
// }


// ListView.builder(
//                             itemCount: diseases.length,
//                             padding: EdgeInsets.symmetric(
//                               vertical: (0.035 * size.height * 0.3)),
//                             itemExtent: size.width * 0.9,
//                             scrollDirection: Axis.horizontal,
//                             itemBuilder: (context, index) {
//                               return _returnHistoryScreen(diseases[index],
//                                   context, diseaseService, size);
//                             },
//                           )