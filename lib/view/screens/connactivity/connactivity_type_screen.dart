import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:project5/data/model/type_connactivity_model.dart';
import 'package:project5/util/color.dart';
import 'package:project5/util/constant.dart';
import 'package:project5/util/style.dart';
import 'package:project5/util/util.dart';
import 'package:project5/view/base/title_data_widget.dart';
import 'package:project5/view/base/title_type_list_widget.dart';

class ConnactivityTypeScreen extends StatelessWidget {
  const ConnactivityTypeScreen({super.key, this.tcm});
  final TypConnactivityModel? tcm;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(
              Colors.transparent,
            ),
          ),
          onPressed: () {
            Get.back();
          },
          child: const Text(
            "Done",
            style: TextStyle(color: blueShade3, fontSize: 17),
          ),
        ),
        title: Text(
          tcm!.title!,
          style: const TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              fontSize: 17),
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(overscroll: false),
          child: ListView(
            children: [
              typeConnativityLogo(),
              detailsConnection(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget typeConnativityLogo() {
    final isWifi = tcm!.title!.contains("Wi-Fi");
    final title = tcm!.title!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 80,
          height: 80,
          margin: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isWifi ? pinkShade : blueShade2,
          ),
          child: Icon(
            isWifi ? Icons.wifi : FontAwesomeIcons.signal,
            size: isWifi != false ? 50 : 40,
            color: Colors.white,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 3,
              backgroundColor: greyShade6,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              tcm!.isAvailabe! ? "Secondray" : "Not Available",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget detailsConnection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleTypeList(
          text: "CONNECTION DETAILS",
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: styleCborder,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "IP Address",
                      style: styleTextNormal,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.chevron_right,
                        color: greyShade5,
                        size: 25,
                      ),
                    )
                  ],
                ),
              ),
              Util.hr(),
              Column(
                children: List.generate(
                  data['title']!.length,
                  (index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 13),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                data['title']![index],
                                style: styleTextNormal,
                              ),
                              Text(
                                data['data']![index],
                                style: const TextStyle(
                                  color: greyShade4,
                                  fontSize: 13,
                                ),
                              )
                            ],
                          )),
                      index == 2 ? const SizedBox() : Util.hr(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const TitleTypeList(
          text: "PRIORITY",
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: styleCborder,
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Priority",
                      style: styleTextNormal,
                    ),
                    Row(
                      children: const [
                        Text(
                          "Secondary",
                          style: TextStyle(
                            color: greyShade4,
                            fontSize: 13,
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: greyShade5,
                          size: 25,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const TitleTypeList(
          text: "DATA CAPS",
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: styleCborder,
          child: Column(
              children: List.generate(
            data['data_caps_title']!.length,
            (index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {},
                  child: TileDataWidget(
                    text: data['data_caps_title']![index],
                    type_data: data['data_caps_data']![index],
                  ),
                ),
                index == 2 ? const SizedBox() : Util.hr(),
              ],
            ),
          )),
        ),
        const TitleTypeList(
          text: "ADVANCED",
        ),
        Container(
            width: MediaQuery.of(context).size.width,
            decoration: styleCborder,
            child: const TileDataWidget(
              text: "Rate Limit",
              type_data: "Off",
            )),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: styleCborder,
          margin: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Reset Statistics",
                      style: styleTextNormal,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
