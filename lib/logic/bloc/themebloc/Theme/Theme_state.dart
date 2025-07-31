part of 'Theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial({required ThemeData themeData}) = _Initial;
  const factory ThemeState.changingappmode() = ChangingAppMode;
  const factory ThemeState.changingappmodesuccessfully({required ThemeData themeData}) = ChangingAppModeSuccessfully;
}