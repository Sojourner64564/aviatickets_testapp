
import 'package:aviatickets_testapp/features/music_main_page/data/models/extension/extension_offer_model_to_entity.dart';
import 'package:aviatickets_testapp/features/music_main_page/data/models/music_model.dart';
import 'package:aviatickets_testapp/features/music_main_page/domain/entity/music_entity.dart';

extension MusicModelToEntityExtension on MusicModel{
  MusicEntity toEntity(){
    return MusicEntity(
      offers: offers.map((e) => e.toEntity(e)).toList(),
    );
  }

}

