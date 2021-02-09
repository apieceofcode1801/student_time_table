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
    print('Build paging time table view');
    return ViewModelBuilder<PagingTimeTableViewModel>.reactive(
        builder: (context, model, child) {
          return GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
              model.endEditing();
            },
            child: Stack(
              children: [
                PageView(
                  scrollDirection: Axis.horizontal,
                  controller: model.pageController,
                  children: getListDayView(timeTable: timeTable)
                      .map((e) => SingleChildScrollView(child: e))
                      .toList(),
                ),
                model.showingActionBar
                    ? Row(
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
                    : Container()
              ],
            ),
          );
        },
        viewModelBuilder: () => PagingTimeTableViewModel());
  }
}
