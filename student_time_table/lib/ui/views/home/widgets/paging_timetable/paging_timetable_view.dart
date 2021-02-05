import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:student_time_table/datamodels/time_table.dart';
import 'package:flutter/material.dart';
import 'package:student_time_table/ui/views/home/home_view_helper.dart';
import 'package:student_time_table/ui/views/home/widgets/paging_timetable/paging_timetable_viewmodel.dart';

class PagingTimeTableView extends StatelessWidget {
  final TimeTable timeTable;
  const PagingTimeTableView({@required this.timeTable});
  @override
  Widget build(BuildContext context) {
    print('rebuild paging view');
    return ViewModelBuilder<PagingTimeTableViewModel>.nonReactive(
        builder: (context, model, child) {
          return Stack(
            children: [
              PageView(
                key: PageStorageKey('paging-timetable-key'),
                scrollDirection: Axis.horizontal,
                controller: model.pageController,
                children: getListDayView(timeTable: timeTable),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_left),
                    onPressed: model.toPreviousPage,
                  ),
                  IconButton(
                      icon: Icon(Icons.arrow_right),
                      onPressed: model.toNextPage),
                ],
              )
            ],
          );
        },
        viewModelBuilder: () => PagingTimeTableViewModel());
  }
}
