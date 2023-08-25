import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:plant_disease_detector/constants/constants.dart';
import 'package:plant_disease_detector/custom_page_route.dart';

import 'package:plant_disease_detector/services/classify.dart';
import 'package:plant_disease_detector/services/disease_provider.dart';
import 'package:plant_disease_detector/services/hive_database.dart';
import 'package:plant_disease_detector/src/home_page/components/aesthetics.dart';
import 'package:plant_disease_detector/src/home_page/components/greeting.dart';
import 'package:plant_disease_detector/src/home_page/components/history.dart';
import 'package:plant_disease_detector/src/home_page/components/instructions.dart';
import 'package:plant_disease_detector/src/home_page/components/titlesection.dart';
import 'package:plant_disease_detector/src/home_page/models/disease_model.dart';

import 'package:provider/provider.dart';
import 'package:plant_disease_detector/scanning_screen.dart';

import '../../error_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Get disease from provider
    final _diseaseService = Provider.of<DiseaseService>(context);

    // Hive service
    HiveService _hiveService = HiveService();

    // Data
    Size size = MediaQuery.of(context).size;
    final Classifier classifier = Classifier();
    late Disease _disease;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: SpeedDial(
        icon: Icons.camera_alt_outlined,
        buttonSize: Size(60, 55),
        backgroundColor: Colors.brown,
        children: [
          SpeedDialChild(
            child: const FaIcon(
              FontAwesomeIcons.image,
              color: kWhite,
            ),
            label: "Choose image",
            labelStyle: TextStyle(fontFamily: 'SourcesansMedium'),
            backgroundColor: Color(0xFF60412D),
            onTap: () async {
              late double _confidence;
              await classifier.getDisease(ImageSource.gallery).then((value) {
                _disease = Disease(
                    name: value![0]["label"],
                    imagePath: classifier.imageFile.path);

                _confidence = value[0]['confidence'];
              });
              // Check confidence
              if (_confidence > 0.8) {
                // Set disease for Disease Service
                _diseaseService.setDiseaseValue(_disease);

                // Save disease
                _hiveService.addDisease(_disease);

                // Navigator.restorablePushNamed(
                //   context,
                //   Suggestions.routeName,
                // );
                Navigator.push(
                    context, CustomPageRoute(child: ScanningScreen()));
              } else {
                Navigator.push(context, CustomPageRoute(child: ErrorPage()));
              }
            },
          ),
          SpeedDialChild(
            child: const FaIcon(
              Icons.camera,
              color: kWhite,
            ),
            label: "Take photo",
            labelStyle: TextStyle(fontFamily: 'SourcesanMedium'),
            backgroundColor: Color(0xFF60412D),
            onTap: () async {
              late double _confidence;

              await classifier.getDisease(ImageSource.camera).then((value) {
                _disease = Disease(
                    name: value![0]["label"],
                    imagePath: classifier.imageFile.path);

                _confidence = value[0]['confidence'];
              });

              // Check confidence
              if (_confidence > 0.8) {
                // Set disease for Disease Service
                _diseaseService.setDiseaseValue(_disease);

                // Save disease
                _hiveService.addDisease(_disease);

                

                // Navigator.restorablePushNamed(
                //   context,
                //   Suggestions.routeName,
                // );
                Navigator.push(
                    context, CustomPageRoute(child: ScanningScreen()));

              } else {
                Navigator.push(context, CustomPageRoute(child: ErrorPage()));
              }
            },
          ),
        ],
      ),
      body: Container(
        // height: 700,
        // margin: EdgeInsets.only(top: 150),
        padding: EdgeInsets.only(top: 1, bottom: 1),
        decoration: BoxDecoration(
            // color: Color(0xFF7D967C),
            color: Colors.white
            // image: DecorationImage(
            //     image: AssetImage('assets/images/rainforest.jpg'), fit: BoxFit.cover),
            ),
        child: CustomScrollView(
          slivers: [
            GreetingSection(90),
            Aesthetic(90),
            TitleSection('Instructions', size.height * 0.066),
            InstructionsSection(size),
            TitleSection('History', size.height * 0.066),
            HistorySection(size, context, _diseaseService),
          ],
        ),
      ),
    );
  }
}
