
import 'package:aviatickets_testapp/features/all_tickets_page/data/model/extension/extension_arrival_model_to_entity.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/data/model/extension/extension_luggage_model_to_entity.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/data/model/extension/extension_price_flight_model_to_entity.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/data/model/ticket_flight_model.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/domain/entity/ticket_flight_entity.dart';

extension TicketFlightModelToEntityExtension on TicketFlightModel{
  TicketFlightEntity toEntity(){
    return TicketFlightEntity(
      id:id,
        badge:badge,
      price: price.toEntity(),
      providerName: providerName,
      company: company,
      departure: departure.toEntity(),
      arrival: arrival.toEntity(),
      hasTransfer: hasTransfer,
      hasVisaTransfer: hasVisaTransfer,
      luggage: luggage.toEntity(),
      handLuggage: handLuggage.toEntity(),
      isReturnable: isReturnable,
      isExchangable: isExchangable,
    );
  }

}