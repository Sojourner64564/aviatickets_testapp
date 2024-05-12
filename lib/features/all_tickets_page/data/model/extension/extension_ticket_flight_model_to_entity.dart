import 'package:aviatickets_testapp/core/format_converter/duration_to_string_converter.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/data/model/extension/extension_arrival_model_to_entity.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/data/model/extension/extension_hand_luggage_model_to_entity.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/data/model/extension/extension_luggage_model_to_entity.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/data/model/extension/extension_price_flight_model_to_entity.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/data/model/ticket_flight_model.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/domain/entity/ticket_flight_entity.dart';
import 'package:intl/intl.dart';

extension TicketFlightModelToEntityExtension on TicketFlightModel{
  TicketFlightEntity toEntity(){
    final arrivalDate = DateTime.parse(arrival.date);
    final departureDate = DateTime.parse(departure.date);
    final timeOfFlight = DurationToStringConverter.convert(arrivalDate.difference(departureDate));

    final newArrival = arrival.toEntity();
    newArrival.date = DateFormat.Hm().format(arrivalDate).toString();
    final newDeparture = departure.toEntity();
    newDeparture.date = DateFormat.Hm().format(departureDate).toString();

    return TicketFlightEntity(
      id:id,
      badge:badge,
      price: price.toEntity(),
      providerName: providerName,
      company: company,
      departure: newDeparture,
      arrival: newArrival,
      hasTransfer: hasTransfer,
      hasVisaTransfer: hasVisaTransfer,
      luggage: luggage.toEntity(),
      handLuggage: handLuggage.toEntity(),
      isReturnable: isReturnable,
      isExchangable: isExchangable,
      timeOfFlight: timeOfFlight
    );
  }

}