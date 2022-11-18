import 'package:flutter/material.dart';
import 'package:project5/data/model/statistics_event_model.dart';

class EventStatisticsWidget extends StatelessWidget {
  const EventStatisticsWidget({Key? key, this.sem}) : super(key: key);
  final StatisticsEventModel? sem;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: sem!.event,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:8.0),
        child: Text(
          sem!.stateName!.text!,
          style: TextStyle(
            color: sem!.stateName!.id == sem!.value ? Colors.white : const Color(0xff666666),
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
