
import 'package:aviatickets_testapp/features/all_tickets_page/data/model/price_flight_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'luggage_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class LuggageModel {
 final  bool hasLuggage;
  final PriceFlightModel? price;

  LuggageModel({
    required this.hasLuggage,
    this.price,
  });

  factory LuggageModel.fromJson(Map<String,dynamic> json) => _$LuggageModelFromJson(json);

  Map<String,dynamic> toJson() => _$LuggageModelToJson(this);
}