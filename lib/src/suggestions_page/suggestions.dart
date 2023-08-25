import 'dart:io';


import 'package:flutter/material.dart';

import 'package:plant_disease_detector/services/disease_provider.dart';
import 'package:plant_disease_detector/src/home_page/models/disease_model.dart';
import 'package:plant_disease_detector/src/suggestions_page/components/plant_image.dart';
import 'package:plant_disease_detector/src/suggestions_page/components/text_property.dart';
import 'package:provider/provider.dart';

class Suggestions extends StatelessWidget {
  const Suggestions({Key? key}) : super(key: key);

  static const routeName = '/suggestions';

  @override
  Widget build(BuildContext context) {
    // Get disease from provider
    final _diseaseService = Provider.of<DiseaseService>(context);

    Disease _disease = _diseaseService.disease;
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff4BA419),
        title: Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text(
            'Suggestions',
            style: TextStyle(
               fontFamily: 'Alegreya-Black',
              fontSize: 30, 
              fontWeight: FontWeight.bold,
              letterSpacing: 1
            ),
          ),
        ),
      ),
      body: Container(
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //       image: AssetImage('assets/images/white-flower.jpeg'), fit: BoxFit.cover),
          // ),
          color: Color(0xFFEEF3F3),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      // height: 350,
                      decoration: BoxDecoration(
                        color: Color(0xff4BA419),
                        // borderRadius: BorderRadius.only(
                        //     bottomLeft: Radius.circular(20),
                        //     bottomRight: Radius.circular(20)),
                      ),
                      // child: PlantImage(size: size, imageFile: File(_disease.imagePath))
                    ),
                    PlantImage(size: size, imageFile: File(_disease.imagePath)),
                    
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 290, ),
                        child: DraggableScrollableSheet(
                          initialChildSize: 0.8,
                           minChildSize: 0.5,
                           maxChildSize: 0.9,
                          builder: (_, controller) => Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            child: ListView(
                              controller: controller,
                              padding: EdgeInsets.only(top: 20, left: 13),
                              children: [
                                TextProperty(
                                  title: 'Crop name',
                                  value: _disease.cropName,
                                  height: size.height,
                                ),
                                TextProperty(
                                    title: 'Status',
                                    value: _disease.status,
                                    height: size.height),
                                    _disease.status.contains('Healthy') ? SizedBox(height: 1,) :  TextProperty(
                                  title: 'Disease name',
                                  value: _disease.name,
                                  height: size.height,
                                ),
                               
                                TextProperty(
                                  title: 'Possible causes',
                                  value: _disease.possibleCauses,
                                  height: size.height,
                                ),
                                TextProperty(
                                  title: 'Possible solution',
                                  value: _disease.possibleSolution,
                                  height: size.height,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // Divider(
              //   thickness: (0.0066 * size.height),
              //   height: (0.013 * size.height),
              // ),
            ],
          )),
    );
  }
}
