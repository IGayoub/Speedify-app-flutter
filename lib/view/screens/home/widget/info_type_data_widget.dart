import 'package:flutter/material.dart';
import 'package:project5/util/color.dart';
import 'package:project5/util/style.dart';

class InfoTypeData extends StatelessWidget {
  const InfoTypeData({Key? key, this.text, this.icon, this.data})
      : super(key: key);
  final String? text;
  final IconData? icon;
  final String? data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: blueShade, borderRadius: BorderRadius.circular(5)),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(text!, style: styleTextNormal),
            ],
          ),
          Row(
            children: [
              Text(
                data!,
                style: const TextStyle(
                  color: greyShade4,
                  fontSize: 14,
                ),
              ),
              const Icon(
                Icons.chevron_right,
                color: greyShade5,
                size: 30,
              )
            ],
          ),
        ],
      ),
    );
  }
}
