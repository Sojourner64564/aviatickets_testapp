import 'package:aviatickets_testapp/features/music_main_page/domain/entity/price_entity.dart';

class OfferEntity {
  final int id;
  final String title;
  final String town;
  final PriceEntity price;

  const OfferEntity({
    this.id = 0,
    this.title = '',
    this.town = '',
    this.price = const PriceEntity(),
  });

}