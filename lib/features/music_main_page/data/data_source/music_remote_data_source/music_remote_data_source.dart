import 'package:aviatickets_testapp/features/music_main_page/data/models/music_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'music_remote_data_source.g.dart';

@RestApi(baseUrl: 'https://run.mocky.io/v3')
abstract class MusicRemoteDataSource{
  factory MusicRemoteDataSource(Dio dio) = _MusicRemoteDataSource;

  @GET('/00727197-24ae-48a0-bcb3-63eb35d7a9de')
  Future<MusicModel> fetchMusic();


}


@lazySingleton
class MusicRemoteDataSourceClient{
  MusicRemoteDataSource client(){
    return _MusicRemoteDataSource(Dio());
  }
}