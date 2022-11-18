import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project5/controller/speedify_controller.dart';
import 'package:project5/util/color.dart';
import 'package:project5/util/constant.dart';
import 'package:project5/util/style.dart';
import 'package:project5/util/util.dart';
import 'package:project5/view/base/bottom_sheet_widget.dart';
import 'package:project5/view/base/title_data_widget.dart';
import 'package:project5/view/base/title_type_list_widget.dart';
import 'package:project5/view/screens/auth/account_screen.dart';
import 'package:project5/view/screens/server/server_select_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final myController = Get.put(SpeedifyController());
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent)
          ),
          onPressed: () {
            Get.back();
          },
          child: const Text(
            "Done",
            style: TextStyle(color: blueShade3, fontSize: 17),
          ),
        ),
        title: const Text(
          "Settings",
          style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              fontSize: 17),
        ),
      ),
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(overscroll: false),
        child: ListView(
          children: [
            const TitleTypeList(
              text: "ACCOUNT",
            ),
            Container(
              decoration: styleCborder,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(
                        const AccountScreen(),
                        duration: const Duration(
                          milliseconds: 500,
                        ),
                        transition: Transition.rightToLeft,
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundColor: greyShade6,
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Free Account",
                                    style: styleTextBold1,
                                  ),
                                  SizedBox(
                                    height: 1,
                                  ),
                                  Text(
                                    "1% 50 GB Used",
                                    style: TextStyle(
                                        color: greyShade2,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.chevron_right,
                            color: greyShade5,
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Util.hr(),
                  const TileDataWidget(
                    text: "News & Events",
                    type_data: "",
                  ),
                  Util.hr(),
                  const TileDataWidget(
                    text: "My Statistics",
                    type_data: "",
                  )
                ],
              ),
            ),
            const TitleTypeList(
              text: "SERVER SELECTION",
            ),
            GestureDetector(
              onTap: () {
                Get.to(
                  const SelectionServer(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(
                    milliseconds: 500,
                  ),
                );
              },
              child: Container(
                decoration: styleCborder,
                child: Obx(() {
                  return TileDataWidget(
                    text: "Server",
                    type_data:
                        "${data['server_automatic']!.elementAt(myController.chServer.value).substring(0, 13)}...",
                  );
                }),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 10,
                top: 10,
              ),
              child: Text(
                "Choses country and server where your internet traffic is routed",
                style: TextStyle(
                    color: Color(0xff777777),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                    fontSize: 10),
              ),
            ),
            const TitleTypeList(
              text: "CONNECTION SETTINGS",
            ),
            Container(
              decoration: styleCborder,
              child: Column(
                children: [
                  const TileDataWidget(
                    text: "Cellular (Cellular)",
                    type_data: "",
                  ),
                  Util.hr(),
                  const TileDataWidget(
                    text: "Wi-Fi (Wi-Fi)",
                    type_data: "",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Speedify will detect and combine new coonnections automaticaly",
                    style: TextStyle(
                        color: Color(0xff777777),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.normal,
                        fontSize: 10),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.bottomSheet(
                        backgroundColor: blackShade3,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                        const BottomSheetUrl(),
                      );
                    },
                    child: const Text(
                      "Get help adding connections >>",
                      style: TextStyle(
                          color: Colors.blue,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          fontSize: 13),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 20),
              decoration: styleCborder,
              width: double.infinity,
              child: const TileDataWidget(
                text: "Performance",
                type_data: "",
              ),
            ),
            const TitleTypeList(text: "SESSION SETTINGS"),
            Container(
              decoration: styleCborder,
              child: Column(
                children: List.generate(
                  data[SETTINGSSESSIONTITLE]!.length,
                  (index) {
                    final title = data[SETTINGSSESSIONTITLE]!.elementAt(index);
                    final typeData = data[SETTINGSSESSIONDATA]!.elementAt(index);
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: TileDataWidget(text: title, type_data: typeData),
                        ),
                        index == 4 ? const SizedBox() : Util.hr()
                      ],
                    );
                  },
                ),
              ),
            ),
            const TitleTypeList(text: "PRIVACY"),
            Container(
              decoration: styleCborder,
              child: Column(
                children: List.generate(
                  data[PRIVACYTITLE]!.length,
                  (index) {
                    final title = data[PRIVACYTITLE]!.elementAt(index);
                    final typeData = data[PRIVACYDATA]!.elementAt(index);
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: TileDataWidget(text: title, type_data: typeData),
                        ),
                        index == 5 ? const SizedBox() : Util.hr()
                      ],
                    );
                  },
                ),
              ),
            ),
            const TitleTypeList(text: "DISPLAY"),
            Container(
              decoration: styleCborder,
              child: Column(
                children: List.generate(
                  data[DISPLAYTITLE]!.length,
                  (index) {
                    final title = data[DISPLAYTITLE]!.elementAt(index);
                    final typeData = data[DISPLAYDATA]!.elementAt(index);
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: TileDataWidget(text: title, type_data: typeData),
                        ),
                        index == 2 ? const SizedBox() : Util.hr()
                      ],
                    );
                  },
                ),
              ),
            ),
            const TitleTypeList(text: "HELP"),
            Container(
              decoration: styleCborder,
              child: Column(
                children: List.generate(
                  data[HELPTITLE]!.length,
                  (index) {
                    final title = data[HELPTITLE]!.elementAt(index);
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            print("hh");
                          },
                          child: TileDataWidget(
                            text: title,
                            type_data: "",
                          ),
                        ),
                        index == 3 ? const SizedBox() : Util.hr()
                      ],
                    );
                  },
                ),
              ),
            ),
            const TitleTypeList(
              text: "Version 12.5.0.11584",
            ),
          ],
        ),
      ),
    );
  }
}
