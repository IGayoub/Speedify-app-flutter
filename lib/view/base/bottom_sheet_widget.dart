import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project5/util/color.dart';

class BottomSheetUrl extends StatelessWidget {
  const BottomSheetUrl({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * .35,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: const [
                Text(
                  "Open with",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Just once",
                    style: TextStyle(color: blackkShade1, fontSize: 15),
                  ),
                ),
                Container(
                  width: 1,
                  height: 10,
                  color: Colors.grey,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Always",
                    style: TextStyle(
                        color: Color.fromARGB(255, 20, 57, 86), fontSize: 15),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
