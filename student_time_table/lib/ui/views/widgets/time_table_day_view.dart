import 'package:flutter/material.dart';
import 'package:student_time_table/ui/styles.dart';

class TimeTableDayView extends StatelessWidget {
  final subjectCount;
  final String title;
  final List<String> morningSubjects;
  final List<String> afternoonSubjects;
  const TimeTableDayView(
      {Key key,
      this.title,
      this.morningSubjects,
      this.afternoonSubjects,
      this.subjectCount = 5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Styles.timeTableBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                    'No.',
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
              child: Text(
                '${i + 1}',
                style: Styles.timeTableContent,
                textAlign: TextAlign.center,
              ),
              flex: 1,
            ),
            Expanded(
              child: morningSubjects != null && morningSubjects.length > i
                  ? Text(
                      morningSubjects[i],
                      style: Styles.timeTableContent,
                      textAlign: TextAlign.center,
                    )
                  : Text(''),
              flex: 3,
            ),
            Expanded(
              child: afternoonSubjects != null && afternoonSubjects.length > i
                  ? Text(
                      afternoonSubjects[i],
                      style: Styles.timeTableContent,
                      textAlign: TextAlign.center,
                    )
                  : Text(''),
              flex: 3,
            )
          ],
        ),
      ));
    }
    return rows;
  }
}
