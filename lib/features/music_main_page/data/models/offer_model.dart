import 'package:aviatickets_testapp/features/music_main_page/data/models/price_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'offer_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class OfferModel {
  final int id;
  final String title;
  final String town;
  final PriceModel price;

  const OfferModel({
    this.id = 0,
    this.title = '',
    this.town = '',
    this.price = const PriceModel(),
  });

  factory OfferModel.fromJson(Map<String,dynamic> json) => _$OfferModelFromJson(json);

  Map<String,dynamic> toJson() => _$OfferModelToJson(this);

}