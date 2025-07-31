import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lightpay/data/store/themedatastore.dart';
import 'package:lightpay/presentation/theme/themedata.dart';

part 'Theme_state.dart';
part 'Theme_event.dart';
part 'Theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent,ThemeState>{
  late bool _isLightMode;
  ThemeBloc({required bool isLightMode}) : super(ThemeState.initial(themeData: isLightMode ? lightmode : darkmode)){
    on<ThemeEvent>((event, emit)async {
      emit(ThemeState.changingappmode());
      try {
        _isLightMode = !_isLightMode; 
        await Storethemedata().setbool('islightmode', _isLightMode);
        emit(ThemeState.changingappmodesuccessfully(themeData: _isLightMode ? lightmode : darkmode));
      } catch (e) {
        ThemeState.initial(themeData: isLightMode ? lightmode : darkmode);
      }
    });
  }

   bool get isLightMode => _isLightMode;
}