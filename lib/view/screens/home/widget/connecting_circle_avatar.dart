import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project5/controller/speedify_controller.dart';
import 'package:project5/util/color.dart';

class ConnectingCircleAvatar extends StatelessWidget {
  const ConnectingCircleAvatar({
    Key? key,
    required this.myController,
  }) : super(key: key);

  final SpeedifyController myController;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return CircleAvatar(
        radius: 12.5,
        backgroundColor: Colors.white,
        child: myController.isLoading.value
            ? const Padding(
                padding: EdgeInsets.all(6),
                child: CircularProgressIndicator(
                    color: greenShade1, strokeWidth: 2),
              )
            : const Icon(
                Icons.chevron_right,
                color: greenShade1,
              ),
      );
    });
  }
}
