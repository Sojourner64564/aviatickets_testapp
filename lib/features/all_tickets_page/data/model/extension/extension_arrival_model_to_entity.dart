
import 'package:aviatickets_testapp/features/all_tickets_page/data/model/arrival_model.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/domain/entity/arrival_entity.dart';

extension ArrivalModelToEntityExtension on ArrivalModel{
  ArrivalEntity toEntity(){
    return ArrivalEntity(
      town:town,
      date:date,
      airport:airport,
    );
  }

}