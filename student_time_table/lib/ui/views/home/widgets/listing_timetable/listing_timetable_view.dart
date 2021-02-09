import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:stacked/stacked.dart';
import 'package:student_time_table/datamodels/time_table.dart';
import 'package:student_time_table/ui/styles.dart';
import 'package:student_time_table/ui/views/home/home_view_helper.dart';
import 'package:student_time_table/ui/views/home/widgets/listing_timetable/listing_timetable_viewmodel.dart';

class ListingTimeTableView extends StatelessWidget {
  final TimeTable timeTable;
  const ListingTimeTableView({Key key, this.timeTable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('rebuilt list view');
    return ViewModelBuilder<ListingTimeTableViewModel>.nonReactive(
        builder: (context, model, child) {
          return Container(
            child: ListView(
                key: PageStorageKey('listing-timetale-key'),
                controller: model.scrollController,
                children: getListDayView(timeTable: timeTable)
                    .map((e) => AutoScrollTag(
                          key: ValueKey(e.day.index),
                          controller: model.scrollController,
                          index: e.day.index,
                          child: Container(
                            child: e,
                            color: Styles.timeTableBackground,
                          ),
                        ))
                    .toList()),
          );
        },
        viewModelBuilder: () => ListingTimeTableViewModel());
  }
}
