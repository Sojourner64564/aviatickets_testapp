// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'arrival_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArrivalModel _$ArrivalModelFromJson(Map<String, dynamic> json) => ArrivalModel(
      town: json['town'] as String,
      date: DateTime.parse(json['date'] as String),
      airport: json['airport'] as String,
    );

Map<String, dynamic> _$ArrivalModelToJson(ArrivalModel instance) =>
    <String, dynamic>{
      'town': instance.town,
      'date': instance.date.toIso8601String(),
      'airport': instance.airport,
    };
