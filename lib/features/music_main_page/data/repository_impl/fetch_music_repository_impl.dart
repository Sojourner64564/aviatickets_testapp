import 'package:aviatickets_testapp/core/error/failure.dart';
import 'package:aviatickets_testapp/core/network/network_info.dart';
import 'package:aviatickets_testapp/features/music_main_page/data/data_source/music_remote_data_source/music_remote_data_source.dart';
import 'package:aviatickets_testapp/features/music_main_page/data/models/extension/extension_music_model_to_entity.dart';
import 'package:aviatickets_testapp/features/music_main_page/domain/entity/music_entity.dart';
import 'package:aviatickets_testapp/features/music_main_page/domain/repository/fetch_music_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: FetchMusicRepository)
class FetchMusicRepositoryImpl implements FetchMusicRepository{
  final NetworkInfo networkInfo;
final MusicRemoteDataSourceClient musicRemoteDataSourceClient;
  FetchMusicRepositoryImpl(this.networkInfo, this.musicRemoteDataSourceClient);

  @override
  Future<Either<Failure, MusicEntity>> fetchMusic() async{
    if (! await networkInfo.isConnected) return Left(ServerFailure());
    try{
      final musicModel = await musicRemoteDataSourceClient.client().fetchMusic();
      final musicEntity = musicModel.toEntity();
      return Right(musicEntity);
    }catch(e){
      return Left(ServerFailure());
    }
  }

}