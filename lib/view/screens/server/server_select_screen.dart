import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:project5/controller/speedify_controller.dart';
import 'package:project5/util/color.dart';
import 'package:project5/util/constant.dart';
import 'package:project5/util/style.dart';
import 'package:project5/util/util.dart';
import 'package:project5/view/base/title_type_list_widget.dart';
import 'package:project5/view/screens/home/widget/connect_tap_widget.dart';
import 'package:project5/view/screens/server/widget/auto_server_card_widget.dart';
import 'package:project5/view/screens/server/widget/manual_server_card_widget.dart';

class SelectionServer extends StatelessWidget {
  const SelectionServer({super.key});

  @override
  Widget build(BuildContext context) {
    final myController = Get.put(SpeedifyController());
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(
                  Icons.chevron_left,
                  size: 30,
                  color: blueShade3,
                ),
                Text(
                  "Back",
                  style: TextStyle(color: blueShade3, fontSize: 17),
                ),
              ]),
        ),
        title: const Text(
          "Server",
          style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              fontSize: 17),
        ),
      ),
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(
          overscroll: false,
        ),
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                myController.loadingServers();
              },
              child: ConnectTapWidget(myController: myController),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1, color: Colors.blue)),
                    child: const Icon(
                      FontAwesomeIcons.earth,
                      color: Colors.pink,
                      size: 15,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Unlock access to premuim servers in locations worldwide.",
                        style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                            fontSize: 11.5),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Upgrade New",
                          style: TextStyle(
                              color: Colors.blue,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const TitleTypeList(
              text: "RECENT SELECTION",
            ),
            Container(
              decoration: styleCborder,
              margin: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: List.generate(
                  1,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          myController.changeServer(value: index);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 13),
                          child: Obx(() {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  data['server_automatic']!
                                      .elementAt(myController.chServer.value),
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
                                          border: Border.all(
                                              color: Colors.white, width: 2),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                              ],
                            );
                          }),
                        ),
                      ),
                      index == 0 ? const SizedBox() : Util.hr(),
                    ],
                  ),
                ),
              ),
            ),
            const TitleTypeList(
              text: "AUTOMATIC SELECTION",
            ),
            Container(
              decoration: styleCborder,
              margin: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: List.generate(
                  data['server_automatic']!.length,
                  (index) => AutomaticServerCardWidget(
                    myController: myController,
                    index: index,
                  ),
                ),
              ),
            ),
            const TitleTypeList(
              text: "MANUAL SELECTION",
            ),
            Container(
              decoration: styleCborder,
              margin: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: List.generate(
                  data['server_earth']!.length,
                  (index) => ManulServerCardWidget(
                    index: index,
                    title: data['server_earth']!.elementAt(index),
                  ),
                ),
              ),
            ),
            Transform.translate(
              offset: const Offset(20, -5),
              child: InkWell(
                onTap: () {},
                child: const Text(
                  "VIEW LESS",
                  style: TextStyle(
                      color: Colors.blue,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.normal,
                      fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
