import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:student_time_table/ui/views/home/home_view_helper.dart';

class PagingTimeTableViewModel extends BaseViewModel {
  final _pageController = PageController(initialPage: getCurrentDay() - 1);
  PageController get pageController => _pageController;

  void toNextPage() {
    if (_pageController.page == 6) {
      _pageController.animateToPage(0,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
      return;
    }
    _pageController.nextPage(
        duration: Duration(milliseconds: 500), curve: Curves.ease);
  }

  void toPreviousPage() {
    final pageIndex = _pageController.page;
    if (pageIndex == 0) {
      _pageController.animateToPage(6,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
      return;
    }
    _pageController.previousPage(
        duration: Duration(milliseconds: 500), curve: Curves.ease);
  }
}
