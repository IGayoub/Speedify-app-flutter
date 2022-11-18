
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project5/controller/speedify_controller.dart';
import 'package:project5/util/constant.dart';
import 'package:project5/util/style.dart';
import 'package:project5/util/util.dart';

class AutomaticServerCardWidget extends StatelessWidget {
  const AutomaticServerCardWidget({
    Key? key,
    required this.myController,
    this.index,
  }) : super(key: key);

  final SpeedifyController myController;
  final int? index;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            myController.changeServer(value: index);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
            child: Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    data['server_automatic']!.elementAt(index!),
                    style: styleTextNormal,
                  ),
                  index == myController.chServer.value
                      ? Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.done,
                            color: Colors.white,
                            size: 20,
                          ),
                        )
                      : Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            shape: BoxShape.circle,
                          ),
                        ),
                ],
              );
            }),
          ),
        ),
        index == 1 ? const SizedBox() : Util.hr(),
      ],
    );
  }
}
