
import 'package:freezed_annotation/freezed_annotation.dart';

part 'userid.freezed.dart';
part 'userid.g.dart';

@freezed
sealed class UserId with _$UserId {
  factory UserId({required String user_id}) = _UserId;
	
  factory UserId.fromJson(Map<String, dynamic> json) =>
			_$UserIdFromJson(json);
}
