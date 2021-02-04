import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:student_time_table/ui/views/home/home_viewmodel.dart';

import '../setup/test_helpers.dart';

void main() {
  setUp(() => registerServices());
  tearDown(() => removeServices());

  group('HomeViewmodelTests -', () {
    group('initialise', () {
      test('When calling futureToRun dataService.getTimetable called', () {
        var model = HomeViewModel();
        var service = registerAndGetDataServiceMock();
        model.loadTimeTable();
        verify(service.getTimeTable);
      });
    });
  });
}
