import 'package:flutter/material.dart';
import 'package:project5/util/color.dart';
import 'package:project5/util/style.dart';


class TileDataWidget extends StatelessWidget {
  const TileDataWidget({
    Key? key,
    this.text,
    this.type_data,
  }) : super(key: key);
  final String? text;
  final String? type_data;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text!,
            style: styleTextNormal,
          ),
          Row(
            children: [
              Text(
                type_data!,
                style: const TextStyle(
                  color: greyShade4,
                  fontSize: 13,
                ),
              ),
              const Icon(
                Icons.chevron_right,
                color: greyShade5,
                size: 25,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
