import 'package:flutter/foundation.dart';
import 'package:student_time_table/datamodels/time_table.dart';
import 'package:student_time_table/services/timetable_service.dart';
import 'package:student_time_table/ui/views/widgets/time_table_day_view.dart';

List<TimeTableDayView> getListDayView({@required TimeTable timeTable}) {
  return [
    TimeTableDayView(
      title: 'Monday',
      day: Day.mon,
      morningSubjects: timeTable.monMorning,
      afternoonSubjects: timeTable.monAfternoon,
    ),
    TimeTableDayView(
      title: 'Tuesday',
      day: Day.tue,
      morningSubjects: timeTable.tueMorning,
      afternoonSubjects: timeTable.tueAfternoon,
    ),
    TimeTableDayView(
      title: 'Wednesday',
      day: Day.wed,
      morningSubjects: timeTable.wedMorning,
      afternoonSubjects: timeTable.wedAfternoon,
    ),
    TimeTableDayView(
      title: 'Thursday',
      day: Day.thu,
      morningSubjects: timeTable.thuMorning,
      afternoonSubjects: timeTable.thuAfternoon,
    ),
    TimeTableDayView(
      title: 'Friday',
      day: Day.fri,
      morningSubjects: timeTable.friMorning,
      afternoonSubjects: timeTable.friAfternoon,
    ),
    TimeTableDayView(
      title: 'Saturday',
      day: Day.sat,
      morningSubjects: timeTable.satMorning,
      afternoonSubjects: timeTable.satAfternoon,
    ),
    TimeTableDayView(
      title: 'Sunday',
      day: Day.sun,
      morningSubjects: timeTable.sunMorning,
      afternoonSubjects: timeTable.sunAfternoon,
    )
  ];
}

int getCurrentDay() {
  final currentTime = DateTime.now();
  return currentTime.weekday;
}
