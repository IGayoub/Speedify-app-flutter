import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project5/util/color.dart';
import 'package:project5/util/constant.dart';
import 'package:project5/util/style.dart';
import 'package:project5/util/util.dart';

class StastisticsScreen extends StatelessWidget {
  const StastisticsScreen({super.key, this.title, this.icon});
  final String? title;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title!,
          style: const TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
              fontSize: 17),
        ),
        leading: TextButton(
          onPressed: () {
            Get.back();
          },
          child: const Text(
            "Done",
            style: TextStyle(color: blueShade3, fontSize: 17),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.ios_share,
              color: blueShade3,
              size: 30,
            ),
          )
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                  color: blueShade, borderRadius: BorderRadius.circular(20)),
              child: Icon(
                icon,
                color: Colors.white,
                size: 40,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, bottom: 20),
              child: Text(
                "the total amount of network traffic that Speedify encrypted.",
                style: TextStyle(
                    color: Color(0xff777777),
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.normal,
                    fontSize: 12),
              ),
            ),
            Container(
                decoration: styleCborder,
                child: Column(
                  children: List.generate(
                    data['statistics_title']!.length,
                    (index) {
                      final title = data['statistics_title']!.elementAt(index);
                      final typeData =
                          data['statistics_data']!.elementAt(index);
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  title,
                                  style: styleTextNormal,
                                ),
                                Text(
                                  typeData,
                                  style: const TextStyle(
                                    color: greyShade4,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          index == 3 ? const SizedBox() : Util.hr(),
                        ],
                      );
                    },
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
