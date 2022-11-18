import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project5/util/util.dart';
import 'package:project5/view/screens/home/statistics_screen.dart';
import 'package:project5/view/screens/home/widget/info_type_data_widget.dart';

class StatisticsTypeWidget extends StatelessWidget {
  const StatisticsTypeWidget({Key? key, this.data, this.index})
      : super(key: key);
  final Map<String, dynamic>? data;
  final int? index;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Get.to(
              StastisticsScreen(
                title: data!['name'],
                icon: data!['icon'],
              ),
              transition: Transition.rightToLeft,
              duration: const Duration(milliseconds: 550),
            );
          },
          child: InfoTypeData(
            text: data!['name'],
            icon: data!['icon'],
            data: data!['dataName'],
          ),
        ),
        index == 2 ? const SizedBox() : Util.hr(),
      ],
    );
  }
}
