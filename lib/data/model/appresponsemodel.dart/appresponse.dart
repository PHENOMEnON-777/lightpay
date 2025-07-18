
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'appresponse.g.dart'; 

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class AppResponse<T> extends Equatable {
  final T? data;
  @JsonKey(name: "msg") final String message;
  final bool success;

  const AppResponse._({
    this.data,
    required this.message,
    required this.success,
  });

  @override
  List<Object?> get props => [
      success,
      message,
      data ?? "",
    ];

  factory AppResponse({
    T? data,
    required String message,
    required bool success,
  }) {
    return AppResponse._(
      data: data,
      message: message,
      success: success,
    );
  }

  factory AppResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
    ){
      // dLog(json);
      return _$AppResponseFromJson(json, fromJsonT);
    }
      

  Map<String, dynamic> toJson(
    Object? Function(T? value) toJsonT,
  ) {
    return _$AppResponseToJson(this, toJsonT);
  }

  @override
  bool get stringify => true;
}