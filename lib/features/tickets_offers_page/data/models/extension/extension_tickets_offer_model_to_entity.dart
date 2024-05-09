
import 'package:aviatickets_testapp/features/tickets_offers_page/data/models/extension/extension_price_ticket_model_to_entity.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/data/models/tickets_offer_model.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/domain/entity/tickets_offer_entity.dart';

extension TicketsOfferModelToEntityExtension on TicketsOfferModel{
  TicketsOfferEntity toEntity(TicketsOfferModel ticketsOfferModel){
    return TicketsOfferEntity(
      id: id,
      title: title,
      timeRange: timeRange.join(' '),
      price: price.toEntity(),
    );
  }
}