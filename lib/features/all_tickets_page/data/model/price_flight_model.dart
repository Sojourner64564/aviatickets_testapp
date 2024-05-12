import 'package:json_annotation/json_annotation.dart';

part 'price_flight_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PriceFlightModel {
  final int value;

  PriceFlightModel({
    this.value = 0,
  });
  factory PriceFlightModel.fromJson(Map<String,dynamic> json) => _$PriceFlightModelFromJson(json);

  Map<String,dynamic> toJson() => _$PriceFlightModelToJson(this);

}