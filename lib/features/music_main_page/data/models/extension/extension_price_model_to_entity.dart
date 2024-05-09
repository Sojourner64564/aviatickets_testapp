
import 'package:aviatickets_testapp/features/music_main_page/data/models/price_model.dart';
import 'package:aviatickets_testapp/features/music_main_page/domain/entity/price_entity.dart';

extension PriceModelToEntityExtension on PriceModel{
  PriceEntity toEntity(){ //PriceModel priceModel
    return PriceEntity(
      value: value
    );
  }

}