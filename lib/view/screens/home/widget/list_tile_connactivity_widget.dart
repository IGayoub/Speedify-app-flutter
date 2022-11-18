import 'package:flutter/material.dart';
import 'package:project5/data/model/type_connactivity_model.dart';

class TypeConnactivity extends StatelessWidget {
  const TypeConnactivity({Key? key, this.tcm}) : super(key: key);
  final TypConnactivityModel? tcm;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: tcm!.color,
        child: Icon(
          tcm!.icon,
          color: Colors.white,
          size: tcm!.title!.contains("Cellular") ? 20 : null,
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tcm!.title!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            tcm!.isAvailabe! ? "Secondray":"Not Available",
            style: const TextStyle(
              color: Color(0xff4E4E4E),
              fontSize: 13,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
