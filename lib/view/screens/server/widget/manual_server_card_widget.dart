import 'package:flutter/material.dart';
import 'package:project5/util/style.dart';
import 'package:project5/util/util.dart';

class ManulServerCardWidget extends StatelessWidget {
  const ManulServerCardWidget({Key? key, this.index,this.title}) : super(key: key);
  final int? index;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 9, bottom: 9, left: 5, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    margin: const EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text(
                    title!,
                    style: styleTextNormal,
                  ),
                ],
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ),
        index == 17? const SizedBox() : Util.hr(),
      ],
    );
  }
}
