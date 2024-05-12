import 'package:aviatickets_testapp/features/all_tickets_page/data/model/luggage_model.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/domain/entity/luggage_entity.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/data/model/extension/extension_price_flight_model_to_entity.dart';

extension LuggageModelToEntityExtension on LuggageModel{
  LuggageEntity toEntity(){
    return LuggageEntity(
        hasLuggage: hasLuggage,
        price: price?.toEntity(),
    );
  }

}