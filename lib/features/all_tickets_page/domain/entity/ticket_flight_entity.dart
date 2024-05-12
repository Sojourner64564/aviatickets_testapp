import 'package:aviatickets_testapp/features/all_tickets_page/domain/entity/arrival_entity.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/domain/entity/hand_luggage_entity.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/domain/entity/luggage_entity.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/domain/entity/price_flight_entity.dart';

class TicketFlightEntity {
  final int id;
  final String? badge;
  final PriceFlightEntity price;
  final String providerName;
  final String company;
  final ArrivalEntity? departure;
  final ArrivalEntity? arrival;
  final bool hasTransfer;
  final bool hasVisaTransfer;
  final LuggageEntity luggage;
  final HandLuggageEntity handLuggage;
  final bool isReturnable;
  final bool isExchangable;
  final String timeOfFlight;

  const TicketFlightEntity({
    this.id = 0,
    this.badge,
    this.price = const PriceFlightEntity(),
    this.providerName = '',
    this.company = '',
    this.departure,
    this.arrival,
    this.hasTransfer = false,
    this.hasVisaTransfer = false,
    this.luggage = const LuggageEntity(),
    this.handLuggage = const HandLuggageEntity(),
    this.isReturnable = false,
    this.isExchangable = false,
    this.timeOfFlight = '',
  });
}
