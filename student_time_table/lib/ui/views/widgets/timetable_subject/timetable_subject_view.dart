import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:student_time_table/services/timetable_service.dart';
import 'package:student_time_table/ui/styles.dart';
import 'package:student_time_table/ui/views/widgets/timetable_subject/timetable_subject_viewmodel.dart';

class TimeTableSubjectView extends StatelessWidget {
  final TimeTableSubjectItem item;
  TimeTableSubjectView({this.item});
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    _controller.text = item.subject;
    return ViewModelBuilder<TimeTableSubjectViewModel>.nonReactive(
        builder: (context, model, child) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              textAlign: TextAlign.center,
              controller: _controller,
              style: Styles.timeTableContent,
              onEditingComplete: () {
                model.updateSubject(_controller.text);
              },
            ),
          );
        },
        viewModelBuilder: () => TimeTableSubjectViewModel(item: item));
  }
}
