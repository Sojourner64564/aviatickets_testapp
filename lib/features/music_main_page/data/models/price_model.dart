import 'package:json_annotation/json_annotation.dart';

part 'price_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PriceModel {
  final int value;

  const PriceModel({
    this.value = 0,
  });

  factory PriceModel.fromJson(Map<String,dynamic> json) => _$PriceModelFromJson(json);

  Map<String,dynamic> toJson() => _$PriceModelToJson(this);

}