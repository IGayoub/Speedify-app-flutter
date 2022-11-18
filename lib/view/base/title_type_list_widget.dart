import 'package:flutter/material.dart';

class TitleTypeList extends StatelessWidget {
  const TitleTypeList({Key? key, this.text}) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        top: 20,
        bottom: 6,
      ),
      child: Text(
        text!,
        style: const TextStyle(
            color: Color(0xff777777),
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            fontSize: 12),
      ),
    );
  }
}