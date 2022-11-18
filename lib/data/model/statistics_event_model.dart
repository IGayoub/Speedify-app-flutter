import 'package:flutter/material.dart';

class StatisticsEventModel {
  final StateName? stateName;
  final Color? color;
  final int? value;
  final void Function()? event;

  StatisticsEventModel({
    this.stateName,
    this.color,
    this.value,
    this.event,
  });
}

class StateName {
  final int? id;
  final String? text;

  StateName({this.id, this.text});
}
