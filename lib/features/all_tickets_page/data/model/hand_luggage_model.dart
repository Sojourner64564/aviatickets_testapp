import 'package:json_annotation/json_annotation.dart';

part 'hand_luggage_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class HandLuggageModel {
  final bool hasHandLuggage;
  final String? size;

  HandLuggageModel({
    required this.hasHandLuggage,
    this.size,
  });
  factory HandLuggageModel.fromJson(Map<String,dynamic> json) => _$HandLuggageModelFromJson(json);

  Map<String,dynamic> toJson() => _$HandLuggageModelToJson(this);
}