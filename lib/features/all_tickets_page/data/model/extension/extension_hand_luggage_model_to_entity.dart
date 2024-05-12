import 'package:aviatickets_testapp/features/all_tickets_page/data/model/hand_luggage_model.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/domain/entity/hand_luggage_entity.dart';

extension HandLuggageModelToEntityExtension on HandLuggageModel{
  HandLuggageEntity toEntity(){
    return HandLuggageEntity(
      hasHandLuggage:hasHandLuggage,
      size: size
    );
  }

}