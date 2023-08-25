import 'package:flutter/material.dart';


class TextProperty extends StatelessWidget {
  const TextProperty(
      {Key? key,
      required this.title,
      required this.value,
      required this.height})
      : super(key: key);

  final String title;
  final double height;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ListTile(
          minVerticalPadding: 8,
          title: Text(
            title,
            style: TextStyle(
              color: Color(0xFF48594F),
              fontFamily: 'Alegreya-Black',
              fontWeight: FontWeight.w500,
              fontSize: (20),
            ),
          ),
          subtitle: Text(
            value,
            style: TextStyle(
              color: Color(0xFF131313),
              fontFamily: 'SourcesansMedium',
              fontWeight: FontWeight.w600,
              fontSize: (20),
            ),
          ),
        )
      ],
    );
  }
}
