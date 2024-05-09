
import 'package:aviatickets_testapp/features/tickets_offers_page/data/models/price_ticket_model.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/domain/entity/price_ticket_entity.dart';

extension PriceTicketModelToEntityExtension on PriceTicketModel{
  PriceTicketEntity toEntity(){
    return PriceTicketEntity(
      value: value.toString(),
    );
  }
}