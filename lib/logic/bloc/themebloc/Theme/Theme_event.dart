part of 'Theme_bloc.dart';

@freezed
sealed class ThemeEvent with _$ThemeEvent {
const factory ThemeEvent.changeappmode() = ChangeAPPMode;
}