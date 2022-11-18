import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project5/controller/speedify_controller.dart';
import 'package:project5/util/color.dart';
import 'package:project5/util/style.dart';

class ConnectTapWidget extends StatelessWidget {
  const ConnectTapWidget({
    Key? key,
    required this.myController,
  }) : super(key: key);

  final SpeedifyController myController;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 60,
        color: myController.isConnecting.value ? Colors.blue : greyShade1,
        child: myController.isLoading.value
            ? Text(
                myController.isConnecting.value
                    ? "Connecting"
                    : "Testing Server",
                style: styleTextBold1,
                textAlign: TextAlign.center,
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Disconnected", style: styleTextBold1),
                  Text("Tap to Connect", style: styleConnect),
                ],
              ),
      );
    });
  }
}
