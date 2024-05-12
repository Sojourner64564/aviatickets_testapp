import 'package:aviatickets_testapp/features/all_tickets_page/data/model/all_tickets_model.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/data/model/extension/extension_ticket_flight_model_to_entity.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/domain/entity/all_tickets_entity.dart';

extension AllTicketsModelToEntityExtension on AllTicketsModel{
  AllTicketsEntity toEntity(){
    return AllTicketsEntity(
      tickets: tickets.map((e) => e.toEntity()).toList(),
    );
  }

}

