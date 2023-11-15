import 'dart:async';

import 'package:bloc/bloc.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialised>(_onInitialised);
  }

  FutureOr<void> _onInitialised(
      HomeInitialised event, Emitter<HomeState> emit) async {
    await Future.delayed(const Duration(seconds: 2));
    emit(HomeLoading());
    await Future.delayed(const Duration(seconds: 2));
    emit(HomeSuccess());
  }
}
