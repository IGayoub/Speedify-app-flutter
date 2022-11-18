import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:project5/controller/speedify_controller.dart';
import 'package:project5/data/api/statistics_data_info.dart';
import 'package:project5/data/model/statistics_event_model.dart';
import 'package:project5/data/model/type_connactivity_model.dart';
import 'package:project5/util/color.dart';
import 'package:project5/util/constant.dart';
import 'package:project5/util/style.dart';
import 'package:project5/util/util.dart';
import 'package:project5/view/screens/connactivity/connactivity_type_screen.dart';
import 'package:project5/view/screens/home/widget/connect_tap_widget.dart';
import 'package:project5/view/screens/home/widget/connecting_circle_avatar.dart';
import 'package:project5/view/screens/home/widget/event_statistics_widget.dart';
import 'package:project5/view/screens/home/widget/list_tile_connactivity_widget.dart';
import 'package:project5/view/screens/home/widget/statistics_type_widget.dart';
import 'package:project5/view/screens/settings/settings_screen.dart';

class SpeedifyScreen extends StatelessWidget {
  const SpeedifyScreen({super.key});
  @override
  Widget build(BuildContext context) {
    SpeedifyController myController = Get.put(SpeedifyController());
    final tcmCellular = TypConnactivityModel(
        title: "Cellular",
        icon: FontAwesomeIcons.signal,
        color: greyShade7,
        isAvailabe: true);
    final tcmWifi = TypConnactivityModel(
      title: "Wi-Fi",
      icon: Icons.wifi,
      color: greyShade7,
      isAvailabe: false,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Speedify",
          style: styleTitleAb,
        ),
        leading: TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(
              Colors.transparent,
            ),
          ),
          onPressed: () {
            Get.to(
              const SettingScreen(),
              transition: Transition.rightToLeft,
              duration: const Duration(milliseconds: 550),
            );
          },
          child: Stack(
            children: [
              const Icon(
                Icons.menu,
                color: Colors.white,
                size: 34,
              ),
              Transform.translate(
                offset: const Offset(23, 3),
                child: const CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 4.5,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 13),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 45,
                  height: 20,
                  decoration: BoxDecoration(
                      color: blackkShade2,
                      borderRadius: BorderRadius.circular(8)),
                ),
                Transform.translate(
                  offset: const Offset(-9, 0),
                  child: GestureDetector(
                    onTap: () {
                      myController.loadingServers();
                    },
                    child: ConnectingCircleAvatar(myController: myController),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    myController.loadingServers();
                  },
                  child: ConnectTapWidget(myController: myController),
                ),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: blackShade3,
                    border: Border.symmetric(
                        horizontal: BorderSide(
                      color: greyShade3,
                      width: 1,
                    )),
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            ConnactivityTypeScreen(
                              tcm: tcmCellular,
                            ),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 550),
                          );
                        },
                        child: TypeConnactivity(tcm: tcmCellular),
                      ),
                      Util.hr(),
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            ConnactivityTypeScreen(tcm: tcmWifi),
                            transition: Transition.rightToLeft,
                            duration: const Duration(milliseconds: 550),
                          );
                        },
                        child: TypeConnactivity(tcm: tcmWifi),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Statistics", style: styleTextBold1),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            4,
                            (index) {
                              return Row(
                                children: [
                                  Obx(() {
                                    return EventStatisticsWidget(
                                        sem: StatisticsEventModel(
                                      stateName: StateName(
                                        id: index,
                                        text: times.elementAt(index),
                                      ),
                                      event: () {
                                        myController.changeTimesState(
                                            index: index);
                                      },
                                      value: myController.sch.value,
                                    ));
                                  }),
                                  index == 3
                                      ? const SizedBox()
                                      : Util.hrSymmetric(),
                                ],
                              );
                            },
                          )),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: styleCborder,
                  child: Column(
                    children: List.generate(
                      3,
                      (index) {
                        return Obx(() {
                          return StatisticsTypeWidget(
                            data: StDataInfo.launchState(
                              value: myController.sch.value,
                            )['ds'][index],
                            index: index,
                          );
                        });
                      },
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "News Events ",
                    style: styleTextBold1,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: styleCborder,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: blueShade,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Icon(
                                    Icons.today_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "A Frightful IRL Tour of the Bates Motel\nHaunted Attraction | Speedify Live",
                                  style: styleTextLong,
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.close_rounded,
                                  color: Colors.black,
                                  size: 15,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              width: double.infinity,
              color: greenShade2,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Free Account",
                        style: styleTextBold1,
                      ),
                      Text(
                        "1% 50 GB Used",
                        style: styleFa,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: styleBtnUP,
                      child: const Text(
                        "UPGRADE NOW",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
