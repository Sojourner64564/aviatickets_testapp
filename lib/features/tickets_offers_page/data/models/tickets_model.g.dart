// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tickets_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketsModel _$TicketsModelFromJson(Map<String, dynamic> json) => TicketsModel(
      ticketsOffers: (json['tickets_offers'] as List<dynamic>?)
              ?.map(
                  (e) => TicketsOfferModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$TicketsModelToJson(TicketsModel instance) =>
    <String, dynamic>{
      'tickets_offers': instance.ticketsOffers,
    };
