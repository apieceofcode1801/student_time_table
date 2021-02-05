import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:stacked/stacked.dart';
import 'package:student_time_table/ui/views/home/home_view_helper.dart';

class ListingTimeTableViewModel extends BaseViewModel {
  final _scrollController = AutoScrollController();
  AutoScrollController get scrollController => _scrollController;

  ListingTimeTableViewModel() {
    _scrollController.scrollToIndex(getCurrentDay() - 1);
  }
}
