import 'package:aviatickets_testapp/features/tickets_offers_page/data/models/price_ticket_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tickets_offer_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class TicketsOfferModel {
  final int id;
  final String title;
  final List<String> timeRange;
  final PriceTicketModel price;

  const TicketsOfferModel({
    this.id = 0,
    this.title = '',
    this.timeRange = const [],
    this.price = const PriceTicketModel(),
  });

  factory TicketsOfferModel.fromJson(Map<String,dynamic> json) => _$TicketsOfferModelFromJson(json);

  Map<String,dynamic> toJson() => _$TicketsOfferModelToJson(this);

}

