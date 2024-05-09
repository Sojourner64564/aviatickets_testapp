import 'package:aviatickets_testapp/features/tickets_offers_page/domain/entity/price_ticket_entity.dart';

class TicketsOfferEntity {
  final int id;
  final String title;
  final String timeRange;
  final PriceTicketEntity price;

  const TicketsOfferEntity({
    this.id = 0,
    this.title = '',
    this.timeRange = '',
    this.price = const PriceTicketEntity(),
  });

}
