import 'package:stacked/stacked.dart';
import 'package:student_time_table/app/locator.dart';
import 'package:student_time_table/datamodels/time_table.dart';
import 'package:student_time_table/services/data_service.dart';
import 'package:student_time_table/services/timetable_service.dart';

class HomeViewModel extends ReactiveViewModel {
  final _dataService = locator<DataService>();
  final _timeTableService = locator<TimeTableService>();

  HomeViewModel() {
    loadTimeTable();
  }

  TimeTable get timeTable => _timeTableService.timeTable ?? TimeTable.init();

  Future loadTimeTable() async {
    var timeTable = await _dataService.getTimeTable();
    if (timeTable == null) {
      timeTable = TimeTable.init();
    }
    _timeTableService.setTimeTable(timeTable);
    notifyListeners();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_timeTableService];
}
