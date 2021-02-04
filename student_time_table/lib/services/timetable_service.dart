import 'package:injectable/injectable.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:stacked/stacked.dart';
import 'package:student_time_table/app/locator.dart';
import 'package:student_time_table/datamodels/time_table.dart';
import 'package:student_time_table/services/data_service.dart';

@lazySingleton
class TimeTableService with ReactiveServiceMixin {
  DataService _dataService = locator<DataService>();
  TimeTableService() {
    listenToReactiveValues([]);
  }

  RxValue<TimeTable> _timeTable = RxValue<TimeTable>(initial: TimeTable.init());
  TimeTable get timeTable => _timeTable.value;

  void setTimeTable(TimeTable timeTable) {
    _timeTable.value = timeTable;
  }

  void updateTimeTable({TimeTableSubjectItem subjectItem}) {
    final dayTime = subjectItem.dayTime;
    final index = subjectItem.index;
    final subject = subjectItem.subject;

    switch (subjectItem.day) {
      case Day.mon:
        if (dayTime == DayTime.morning) {
          _timeTable.value.monMorning[index] = subject;
        } else {
          _timeTable.value.monAfternoon[index] = subject;
        }
        break;
      case Day.tue:
        if (dayTime == DayTime.morning) {
          _timeTable.value.tueMorning[index] = subject;
        } else {
          _timeTable.value.tueAfternoon[index] = subject;
        }
        break;
      case Day.wed:
        if (dayTime == DayTime.morning) {
          _timeTable.value.wedMorning[index] = subject;
        } else {
          _timeTable.value.wedAfternoon[index] = subject;
        }
        break;
      case Day.thu:
        if (dayTime == DayTime.morning) {
          _timeTable.value.thuMorning[index] = subject;
        } else {
          _timeTable.value.thuAfternoon[index] = subject;
        }
        break;
      case Day.fri:
        if (dayTime == DayTime.morning) {
          _timeTable.value.friMorning[index] = subject;
        } else {
          _timeTable.value.friAfternoon[index] = subject;
        }
        break;
      case Day.sat:
        if (dayTime == DayTime.morning) {
          _timeTable.value.satMorning[index] = subject;
        } else {
          _timeTable.value.satAfternoon[index] = subject;
        }
        break;
      case Day.sun:
        if (dayTime == DayTime.morning) {
          _timeTable.value.sunMorning[index] = subject;
        } else {
          _timeTable.value.sunAfternoon[index] = subject;
        }
        break;
      default:
        break;
    }

    _dataService.saveTimeTable(_timeTable.value);
  }
}

class TimeTableSubjectItem {
  final Day day;
  final DayTime dayTime;
  final int index;
  String subject;

  TimeTableSubjectItem(this.day, this.dayTime, this.index, this.subject);
}

enum Day { mon, tue, wed, thu, fri, sat, sun }
enum DayTime { morning, afternoon }
