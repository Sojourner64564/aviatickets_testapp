
import 'package:json_annotation/json_annotation.dart';

part 'arrival_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ArrivalModel {
  final String town;
  final String date;
  final String airport;

  ArrivalModel({
     this.town = '',
     this.date = '',
     this.airport = '',
  });

  factory ArrivalModel.fromJson(Map<String,dynamic> json) => _$ArrivalModelFromJson(json);

  Map<String,dynamic> toJson() => _$ArrivalModelToJson(this);
}