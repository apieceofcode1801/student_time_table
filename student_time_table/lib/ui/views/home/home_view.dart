import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:student_time_table/datamodels/time_table.dart';
import 'package:student_time_table/ui/views/home/home_viewmodel.dart';
import 'package:student_time_table/ui/views/home/widgets/listing_timetable/listing_timetable_view.dart';
import 'package:student_time_table/ui/views/home/widgets/paging_timetable/paging_timetable_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context, model, child) {
          TimeTable timeTable = model.timeTable;
          final listingView = ListingTimeTableView(
            timeTable: timeTable,
          );
          final pagingView = PagingTimeTableView(timeTable: timeTable);
          return Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: AppBar(
              title: Text('Time Table'),
              actions: [
                IconButton(
                    icon: model.isListLayout
                        ? Icon(Icons.list_alt)
                        : Icon(Icons.list),
                    onPressed: model.toogleLayout)
              ],
            ),
            body: model.isListLayout ? listingView : pagingView,
          );
        },
        viewModelBuilder: () => HomeViewModel());
  }
}
