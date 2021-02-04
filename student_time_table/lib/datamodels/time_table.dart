import 'package:json_annotation/json_annotation.dart';
part 'time_table.g.dart';

@JsonSerializable(explicitToJson: true)
class TimeTable {
  String userId;
  List<String> monMorning;
  List<String> monAfternoon;
  List<String> tueMorning;
  List<String> tueAfternoon;
  List<String> wedMorning;
  List<String> wedAfternoon;
  List<String> thuMorning;
  List<String> thuAfternoon;
  List<String> friMorning;
  List<String> friAfternoon;
  List<String> satMorning;
  List<String> satAfternoon;
  List<String> sunMorning;
  List<String> sunAfternoon;

  TimeTable(
      {this.userId,
      this.monAfternoon,
      this.monMorning,
      this.tueAfternoon,
      this.tueMorning,
      this.wedAfternoon,
      this.wedMorning,
      this.thuAfternoon,
      this.thuMorning,
      this.friAfternoon,
      this.friMorning,
      this.satAfternoon,
      this.satMorning,
      this.sunAfternoon,
      this.sunMorning});

  factory TimeTable.fromJson(Map<String, dynamic> json) =>
      _$TimeTableFromJson(json);

  Map<String, dynamic> toJson() => _$TimeTableToJson(this);
}
