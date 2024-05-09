// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tickets_offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketsOfferModel _$TicketsOfferModelFromJson(Map<String, dynamic> json) =>
    TicketsOfferModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      timeRange: (json['time_range'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      price: json['price'] == null
          ? const PriceTicketModel()
          : PriceTicketModel.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TicketsOfferModelToJson(TicketsOfferModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'time_range': instance.timeRange,
      'price': instance.price,
    };
