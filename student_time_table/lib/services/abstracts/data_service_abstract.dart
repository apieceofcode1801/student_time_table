import 'package:student_time_table/datamodels/time_table.dart';

abstract class DataServiceAbstract {
  Future<bool> saveTimeTable(TimeTable timeTable);
  Future<TimeTable> getTimeTable();
}
