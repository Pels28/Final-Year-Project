import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:plant_disease_detector/custom_page_route.dart';
import 'package:plant_disease_detector/services/disease_provider.dart';
import 'package:plant_disease_detector/services/hive_database.dart';
import 'package:plant_disease_detector/src/home_page/models/disease_model.dart';
import 'package:plant_disease_detector/src/suggestions_page/suggestions.dart';

class HistorySection extends SliverFixedExtentList {
  HistorySection(Size size, BuildContext context, DiseaseService diseaseService,
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
                    return Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 8),
                        // width: 300,
                        // height: 300,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: (0.053 * size.height * 0.3),
                          ),
                          child: SizedBox(
                              width: size.width,
                              child: ListView.builder(
                                itemCount: diseases.length,
                                physics: BouncingScrollPhysics(),
                                padding: EdgeInsets.symmetric(vertical: 5),
                                reverse: true,
                                // itemExtent: size.width * 0.6,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return _returnHistoryContainer(
                                      diseases[index],
                                      context,
                                      diseaseService,
                                      size);
                                },
                              )),
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

Widget _returnHistoryContainer(Disease disease, BuildContext context,
    DiseaseService diseaseService, Size size) {
  return Padding(
    padding: EdgeInsets.only(
      left: 15.0,
    ),
    child: Stack(children: [
      Expanded(
        child: GestureDetector(
          onTap: () {
            // Set disease for Disease Service
            diseaseService.setDiseaseValue(disease);

            // Navigator.restorablePushNamed(
            //   context,
            //   Suggestions.routeName,
            // );
            Navigator.of(context).push(CustomPageRoute(child: Suggestions()));
          },
          child: Container(
              padding: EdgeInsets.only(top: 9),
              width: 330,
              height: 175,
              decoration: BoxDecoration(
             
                boxShadow: [
                  BoxShadow(
                    // color: Color(0xFFF2F0F2),
                    color: Colors.black12,
                    offset: Offset(0, 2),
                    // spreadRadius: 0.5,
                    blurRadius: 20,
                  ),
                ],
                // color: Color(0xFF48594F),
                color: Color(0xff4BA419),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Center(
                    child: Container(
                        margin: EdgeInsets.all(5.0),
                        width: 300,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              image: FileImage(File(disease.imagePath)),
                              fit: BoxFit.cover),
                        )),
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 25),
                    width: 210.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: 
                                Text(
                                  '${disease.name}',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.5, fontFamily: 'SourcesansMedium'),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                      
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    ]),
  );
}

Widget _returnNothingToShow(Size size) {
  return Padding(
    padding: EdgeInsets.fromLTRB((0.053 * size.height * 0.3),
        (0.053 * size.height * 0.3), (0.053 * size.height * 0.3), 0),
    child: Container(
        decoration: BoxDecoration(
            color: Color(0x89E6E6E6),
            borderRadius: BorderRadius.circular((0.053 * size.height * 0.3)),
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
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, (0.066 * size.height * 0.3)),
          child: const Center(
              child: Text(
            'Nothing to show',
            style: TextStyle(color: Colors.black, fontFamily: 'SourcesansMedium', fontSize: 12),
          )),
        )),
  );
}
