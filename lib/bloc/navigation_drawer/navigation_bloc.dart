import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sit_app/bloc/navigation_drawer/event.dart';
import 'package:sit_app/bloc/navigation_drawer/state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  @override
  HomeScreenState get initialState => HomeScreenInitState();

  @override
  Stream<HomeScreenState> mapEventToState(HomeScreenEvent event) async* {
    print(event);
    if (event is HomeScreenInitEvent) {
      yield HomeScreenInitState();
    } else if (event is HomeScreenAboutInstitutionEvent) {
      yield HomeScreenAboutInstitutionState();
    } else if (event is HomeScreenDepartmentsEvent) {
      yield HomeScreenDepartmentsState();
    } else if (event is HomeScreenCentralFacilitiesEvent) {
      yield HomeScreenCentralFacilitiesState();
    }
  }
}
