import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:student_time_table/services/timetable_service.dart';
import 'package:student_time_table/ui/styles.dart';
import 'package:student_time_table/ui/views/home/widgets/timetable_subject/timetable_subject_viewmodel.dart';

class TimeTableSubjectView extends StatelessWidget {
  final TimeTableSubjectItem item;
  TimeTableSubjectView({this.item});
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TimeTableSubjectViewModel>.nonReactive(
        builder: (context, model, child) {
          model.controller.text = item.subject;
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: TextField(
              textAlign: TextAlign.center,
              controller: model.controller,
              style: Styles.timeTableContent,
              cursorColor: Styles.timeTableTextCursor,
              cursorWidth: 1,
              onChanged: model.updateSubject,
              onTap: () {
                model.setIsEditing(true);
              },
              onEditingComplete: () {
                model.setIsEditing(false);
                FocusScope.of(context).unfocus();
              },
            ),
          );
        },
        viewModelBuilder: () => TimeTableSubjectViewModel(item: item));
  }
}
