import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project5/util/color.dart';
import 'package:project5/util/constant.dart';
import 'package:project5/util/style.dart';
import 'package:project5/util/util.dart';
import 'package:project5/view/base/title_data_widget.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          "Account",
          style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              fontSize: 17),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const CircleAvatar(
              backgroundColor: greyShade6,
              radius: 40,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 55,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Free Account",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "50 GB Monthly",
              style: TextStyle(
                  color: greyShade2,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 14),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 20),
              decoration: styleCborder,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "2% 50 GB Used",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                              fontSize: 14),
                        ),
                        Container(
                          width: double.infinity,
                          height: Get.height * 0.03,
                          margin: const EdgeInsets.symmetric(vertical: 3),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 10,
                                height: Get.height,
                                decoration: const BoxDecoration(
                                  color: Color(0xff08D237),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      bottomLeft: Radius.circular(5)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          "Free Data Renews on 11/18/22",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                              fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                  Util.hr(),
                  Column(
                    children: List.generate(
                      data[ACCOUNTOPTIONS]!.length,
                      (index) {
                        final title = data[ACCOUNTOPTIONS]!.elementAt(index);
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: (){},
                              child: TileDataWidget(
                                text: title,
                                type_data: "",
                              ),
                            ),
                            index == 2 ? const SizedBox() : Util.hr(),
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
