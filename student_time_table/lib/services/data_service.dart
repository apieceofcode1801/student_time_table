import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:student_time_table/datamodels/time_table.dart';
import 'package:student_time_table/services/abstracts/data_service_abstract.dart';

@lazySingleton
class DataService extends DataServiceAbstract {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _timeTableFile async {
    final path = await _localPath;
    final filePath = '$path/timetable.json';
    if (await File(filePath).exists()) {
      return File(filePath);
    } else {
      return File(filePath).create();
    }
  }

  Future<TimeTable> getTimeTable() async {
    try {
      final file = await _timeTableFile;
      String jsonContent = await file.readAsString();
      Map timeTableMap = jsonDecode(jsonContent);
      return TimeTable.fromJson(timeTableMap);
    } catch (e) {
      print(e.toString());
      return TimeTable();
    }
  }

  Future<bool> saveTimeTable(TimeTable timeTable) async {
    try {
      final file = await _timeTableFile;
      file.writeAsString(jsonEncode(timeTable));
      return true;
    } catch (e) {
      print(e.toString());
      return false;
    }
  }
}
