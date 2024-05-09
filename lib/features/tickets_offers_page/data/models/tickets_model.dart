import 'package:aviatickets_testapp/features/tickets_offers_page/data/models/tickets_offer_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tickets_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class TicketsModel {
  final List<TicketsOfferModel> ticketsOffers;

  const TicketsModel({
    this.ticketsOffers = const [],
  });

  factory TicketsModel.fromJson(Map<String,dynamic> json) => _$TicketsModelFromJson(json);

  Map<String,dynamic> toJson() => _$TicketsModelToJson(this);

}


