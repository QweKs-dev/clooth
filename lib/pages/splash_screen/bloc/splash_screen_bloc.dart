import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'splash_screen_event.dart';
part 'splash_screen_state.dart';

class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  SplashScreenBloc() : super(SplashScreenInitial()) {
    on<SplashScreenEvent>((event, emit) async {
      print(event);
      if(event is NavigateToAuthScreenEvent){
        emit(SplashScreenLoading());
        await Future.delayed(const Duration(milliseconds: 1500));
        emit(SplashScreenLoaded());
      }
    });
  }
}
