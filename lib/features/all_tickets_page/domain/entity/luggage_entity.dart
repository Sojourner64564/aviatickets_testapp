import 'package:aviatickets_testapp/features/all_tickets_page/domain/entity/price_flight_entity.dart';

class LuggageEntity {
   final bool hasLuggage;
   final PriceFlightEntity? price;

  const LuggageEntity({
    this.hasLuggage = false,
    this.price = const PriceFlightEntity(),
  });

}