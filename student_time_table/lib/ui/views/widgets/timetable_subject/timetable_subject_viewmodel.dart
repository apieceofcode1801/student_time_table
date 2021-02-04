import 'package:stacked/stacked.dart';
import 'package:student_time_table/app/locator.dart';
import 'package:student_time_table/services/timetable_service.dart';

class TimeTableSubjectViewModel extends BaseViewModel {
  final _timeTableService = locator<TimeTableService>();

  TimeTableSubjectItem item;

  TimeTableSubjectViewModel({this.item});

  void updateSubject(String subject) {
    item.subject = subject;
    _timeTableService.updateTimeTable(subjectItem: item);
  }
}
