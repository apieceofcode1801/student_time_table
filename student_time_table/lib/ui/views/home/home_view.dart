import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:student_time_table/datamodels/time_table.dart';
import 'package:student_time_table/ui/views/home/home_viewmodel.dart';
import 'package:student_time_table/ui/views/widgets/time_table_day_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context, model, child) {
          TimeTable timeTable = model.data;
          return Scaffold(
            appBar: AppBar(
              title: Text('Time Table'),
            ),
            body: model.isBusy
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Container(
                    child: ListView(
                      children: [
                        TimeTableDayView(
                          title: 'Monday',
                          morningSubjects: timeTable.monMorning,
                          afternoonSubjects: timeTable.monAfternoon,
                        ),
                        TimeTableDayView(
                          title: 'Tuesday',
                          morningSubjects: timeTable.tueMorning,
                          afternoonSubjects: timeTable.tueAfternoon,
                        ),
                        TimeTableDayView(
                          title: 'Wednesday',
                          morningSubjects: timeTable.wedMorning,
                          afternoonSubjects: timeTable.wedAfternoon,
                        ),
                        TimeTableDayView(
                          title: 'Thursday',
                          morningSubjects: timeTable.thuMorning,
                          afternoonSubjects: timeTable.thuAfternoon,
                        ),
                        TimeTableDayView(
                          title: 'Friday',
                          morningSubjects: timeTable.friMorning,
                          afternoonSubjects: timeTable.friAfternoon,
                        ),
                        TimeTableDayView(
                          title: 'Saturday',
                          morningSubjects: timeTable.satMorning,
                          afternoonSubjects: timeTable.satAfternoon,
                        ),
                        TimeTableDayView(
                          title: 'Sunday',
                          morningSubjects: timeTable.sunMorning,
                          afternoonSubjects: timeTable.sunAfternoon,
                        ),
                      ],
                    ),
                  ),
          );
        },
        viewModelBuilder: () => HomeViewModel());
  }
}
