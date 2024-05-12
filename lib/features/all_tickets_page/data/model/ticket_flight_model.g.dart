// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_flight_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TicketFlightModel _$TicketFlightModelFromJson(Map<String, dynamic> json) =>
    TicketFlightModel(
      id: (json['id'] as num).toInt(),
      badge: json['badge'] as String?,
      price: PriceFlightModel.fromJson(json['price'] as Map<String, dynamic>),
      providerName: json['provider_name'] as String,
      company: json['company'] as String,
      departure:
          ArrivalModel.fromJson(json['departure'] as Map<String, dynamic>),
      arrival: ArrivalModel.fromJson(json['arrival'] as Map<String, dynamic>),
      hasTransfer: json['has_transfer'] as bool,
      hasVisaTransfer: json['has_visa_transfer'] as bool,
      luggage: LuggageModel.fromJson(json['luggage'] as Map<String, dynamic>),
      handLuggage: HandLuggageModel.fromJson(
          json['hand_luggage'] as Map<String, dynamic>),
      isReturnable: json['is_returnable'] as bool,
      isExchangable: json['is_exchangable'] as bool,
    );

Map<String, dynamic> _$TicketFlightModelToJson(TicketFlightModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'badge': instance.badge,
      'price': instance.price,
      'provider_name': instance.providerName,
      'company': instance.company,
      'departure': instance.departure,
      'arrival': instance.arrival,
      'has_transfer': instance.hasTransfer,
      'has_visa_transfer': instance.hasVisaTransfer,
      'luggage': instance.luggage,
      'hand_luggage': instance.handLuggage,
      'is_returnable': instance.isReturnable,
      'is_exchangable': instance.isExchangable,
    };
