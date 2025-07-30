part of 'History_bloc.dart';

@freezed
sealed class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.gethistory() = GetHistory;
  const factory HistoryEvent.getrechargelist() = GetListOfRecharge;
}