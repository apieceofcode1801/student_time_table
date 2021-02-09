import 'package:flutter/material.dart';
import 'package:student_time_table/services/timetable_service.dart';
import 'package:student_time_table/ui/styles.dart';
import 'package:student_time_table/ui/views/home/widgets/timetable_subject/timetable_subject_view.dart';

class TimeTableDayView extends StatelessWidget {
  final subjectCount;
  final String title;
  final Day day;
  final List<String> morningSubjects;
  final List<String> afternoonSubjects;
  const TimeTableDayView({
    Key key,
    this.day,
    this.title,
    this.morningSubjects,
    this.afternoonSubjects,
    this.subjectCount = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      color: Styles.timeTableBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: Styles.timeTableDayTitle,
          ),
          Container(
            height: 44,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'No',
                    style: Styles.timeTableHeadTitle,
                    textAlign: TextAlign.center,
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Text(
                    'Morning',
                    style: Styles.timeTableHeadTitle,
                    textAlign: TextAlign.center,
                  ),
                  flex: 3,
                ),
                Expanded(
                  child: Text(
                    'Afternoon',
                    style: Styles.timeTableHeadTitle,
                    textAlign: TextAlign.center,
                  ),
                  flex: 3,
                )
              ],
            ),
          ),
          Column(
            children: _getSubjectRows(),
          ),
        ],
      ),
    );
  }

  List<Widget> _getSubjectRows() {
    List<Widget> rows = [];
    for (var i = 0; i < subjectCount; i++) {
      rows.add(Container(
        height: 44,
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    '${i + 1}',
                    style: Styles.timeTableContent,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              flex: 1,
            ),
            Expanded(
              child: TimeTableSubjectView(
                item: TimeTableSubjectItem(
                    day, DayTime.morning, i, morningSubjects[i]),
              ),
              flex: 3,
            ),
            Expanded(
              child: TimeTableSubjectView(
                item: TimeTableSubjectItem(
                    day, DayTime.afternoon, i, afternoonSubjects[i]),
              ),
              flex: 3,
            )
          ],
        ),
      ));
    }
    return rows;
  }
}
