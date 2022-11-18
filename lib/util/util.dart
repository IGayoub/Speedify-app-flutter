import 'package:flutter/material.dart';
import 'package:project5/util/color.dart';

class Util {
  static Widget hr() {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      width: double.infinity,
      height: 1,
      color: greyShade3,
    );
  }

  static Widget hrSymmetric() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: 1,
      height: 15,
      color: greyShade2,
    );
  }
}
