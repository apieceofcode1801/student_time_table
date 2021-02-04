import 'package:stacked/stacked.dart';
import 'package:student_time_table/app/locator.dart';
import 'package:student_time_table/datamodels/time_table.dart';
import 'package:student_time_table/services/data_service.dart';

class HomeViewModel extends FutureViewModel {
  final _dataService = locator<DataService>();

  TimeTable _timeTable;
  TimeTable get timeTable => _timeTable;

  @override
  Future futureToRun() async {
    _timeTable = await _dataService.getTimeTable();
    if (_timeTable == null) {
      _timeTable = TimeTable();
    }
    return _timeTable;
  }
}
