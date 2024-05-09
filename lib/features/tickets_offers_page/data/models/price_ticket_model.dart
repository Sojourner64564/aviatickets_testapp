import 'package:json_annotation/json_annotation.dart';

part 'price_ticket_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PriceTicketModel {
  final int value;

  const PriceTicketModel({
    this.value = 0,
  });

  factory PriceTicketModel.fromJson(Map<String,dynamic> json) => _$PriceTicketModelFromJson(json);

  Map<String,dynamic> toJson() => _$PriceTicketModelToJson(this);
}