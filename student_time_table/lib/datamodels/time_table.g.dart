// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeTable _$TimeTableFromJson(Map<String, dynamic> json) {
  return TimeTable(
    userId: json['userId'] as String,
    monAfternoon:
        (json['monAfternoon'] as List)?.map((e) => e as String)?.toList(),
    monMorning: (json['monMorning'] as List)?.map((e) => e as String)?.toList(),
    tueAfternoon:
        (json['tueAfternoon'] as List)?.map((e) => e as String)?.toList(),
    tueMorning: (json['tueMorning'] as List)?.map((e) => e as String)?.toList(),
    wedAfternoon:
        (json['wedAfternoon'] as List)?.map((e) => e as String)?.toList(),
    wedMorning: (json['wedMorning'] as List)?.map((e) => e as String)?.toList(),
    thuAfternoon:
        (json['thuAfternoon'] as List)?.map((e) => e as String)?.toList(),
    thuMorning: (json['thuMorning'] as List)?.map((e) => e as String)?.toList(),
    friAfternoon:
        (json['friAfternoon'] as List)?.map((e) => e as String)?.toList(),
    friMorning: (json['friMorning'] as List)?.map((e) => e as String)?.toList(),
    satAfternoon:
        (json['satAfternoon'] as List)?.map((e) => e as String)?.toList(),
    satMorning: (json['satMorning'] as List)?.map((e) => e as String)?.toList(),
    sunAfternoon:
        (json['sunAfternoon'] as List)?.map((e) => e as String)?.toList(),
    sunMorning: (json['sunMorning'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$TimeTableToJson(TimeTable instance) => <String, dynamic>{
      'userId': instance.userId,
      'monMorning': instance.monMorning,
      'monAfternoon': instance.monAfternoon,
      'tueMorning': instance.tueMorning,
      'tueAfternoon': instance.tueAfternoon,
      'wedMorning': instance.wedMorning,
      'wedAfternoon': instance.wedAfternoon,
      'thuMorning': instance.thuMorning,
      'thuAfternoon': instance.thuAfternoon,
      'friMorning': instance.friMorning,
      'friAfternoon': instance.friAfternoon,
      'satMorning': instance.satMorning,
      'satAfternoon': instance.satAfternoon,
      'sunMorning': instance.sunMorning,
      'sunAfternoon': instance.sunAfternoon,
    };
