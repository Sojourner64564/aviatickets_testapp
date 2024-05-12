import 'package:aviatickets_testapp/features/all_tickets_page/data/model/arrival_model.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/data/model/hand_luggage_model.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/data/model/luggage_model.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/data/model/price_flight_model.dart';
import 'package:json_annotation/json_annotation.dart';



part 'ticket_flight_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class TicketFlightModel {
  final int id;
  final String? badge;
  final PriceFlightModel price;
  final String providerName;
  final String company;
  final ArrivalModel departure;
  final ArrivalModel arrival;
  final bool hasTransfer;
  final bool hasVisaTransfer;
  final LuggageModel luggage;
  final HandLuggageModel handLuggage;
  final bool isReturnable;
  final bool isExchangable;

  TicketFlightModel({
    required this.id,
    this.badge,
    required this.price,
    required this.providerName,
    required this.company,
    required this.departure,
    required this.arrival,
    required this.hasTransfer,
    required this.hasVisaTransfer,
    required this.luggage,
    required this.handLuggage,
    required this.isReturnable,
    required this.isExchangable,
  });

  factory TicketFlightModel.fromJson(Map<String,dynamic> json) => _$TicketFlightModelFromJson(json);

  Map<String,dynamic> toJson() => _$TicketFlightModelToJson(this);
}