
import 'package:aviatickets_testapp/features/music_main_page/data/models/extension/extension_price_model_to_entity.dart';
import 'package:aviatickets_testapp/features/music_main_page/data/models/offer_model.dart';
import 'package:aviatickets_testapp/features/music_main_page/domain/entity/offer_entity.dart';

extension OfferModelToEntityExtension on OfferModel{
  OfferEntity toEntity(OfferModel offerModel){
    return OfferEntity(
      id: offerModel.id,
      title: offerModel.title,
      town: offerModel.town,
      price: offerModel.price.toEntity(),
    );
  }

}