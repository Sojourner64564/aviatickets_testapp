import 'package:aviatickets_testapp/core/error/failure.dart';
import 'package:aviatickets_testapp/features/music_main_page/domain/entity/music_entity.dart';
import 'package:aviatickets_testapp/features/music_main_page/domain/repository/fetch_music_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchMusicUsecase implements FetchMusicRepository{
  final FetchMusicRepository fetchMusicRepository;

  FetchMusicUsecase(this.fetchMusicRepository);

  @override
  Future<Either<Failure, MusicEntity>> fetchMusic() async{
    return await fetchMusicRepository.fetchMusic();
  }

}