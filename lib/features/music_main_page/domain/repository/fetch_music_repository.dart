import 'package:aviatickets_testapp/core/error/failure.dart';
import 'package:aviatickets_testapp/features/music_main_page/domain/entity/music_entity.dart';
import 'package:dartz/dartz.dart';

abstract class FetchMusicRepository{
  Future<Either<Failure, MusicEntity>> fetchMusic();
}