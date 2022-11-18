class StatisticsTypeModel {
  final int? id;
  final String? name;
  final String? dataName;
  final EventState? eventState;

  StatisticsTypeModel({
    this.id,
    this.name,
    this.dataName,
    this.eventState,
  });
}

typedef EventState = void Function();
