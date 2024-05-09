
import 'package:aviatickets_testapp/features/tickets_offers_page/data/models/extension/extension_tickets_offer_model_to_entity.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/data/models/tickets_model.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/domain/entity/tickets_entity.dart';

extension TicketsModelToEntityExtension on TicketsModel{
  TicketsEntity toEntity(){
    return TicketsEntity(
      ticketsOffers: ticketsOffers.map((e) => e.toEntity(e)).toList(),
    );
  }
}
