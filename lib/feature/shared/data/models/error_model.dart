import 'package:json_annotation/json_annotation.dart';

part 'error_model.g.dart';

@JsonSerializable()
class ErrorModel {
  const ErrorModel({
    required this.message,
  });

  factory ErrorModel.fromJson(Map<String, Object?> json) =>
      _$ErrorModelFromJson(json);

  final String message;
}
