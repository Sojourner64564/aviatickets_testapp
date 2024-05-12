
import 'package:aviatickets_testapp/features/all_tickets_page/data/model/price_flight_model.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/domain/entity/price_flight_entity.dart';

extension PriceFlightModelToEntityExtension on PriceFlightModel{
  PriceFlightEntity toEntity(){
    return PriceFlightEntity(
      value: value,
    );
  }

}