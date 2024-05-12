// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_tickets_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllTicketsModel _$AllTicketsModelFromJson(Map<String, dynamic> json) =>
    AllTicketsModel(
      tickets: (json['tickets'] as List<dynamic>?)
              ?.map(
                  (e) => TicketFlightModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AllTicketsModelToJson(AllTicketsModel instance) =>
    <String, dynamic>{
      'tickets': instance.tickets,
    };
