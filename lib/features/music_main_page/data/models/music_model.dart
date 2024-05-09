

import 'package:aviatickets_testapp/features/music_main_page/data/models/offer_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'music_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MusicModel {
  final List<OfferModel> offers;

  const MusicModel({
    this.offers = const [],
  });

  factory MusicModel.fromJson(Map<String,dynamic> json) => _$MusicModelFromJson(json);

  Map<String,dynamic> toJson() => _$MusicModelToJson(this);

}

