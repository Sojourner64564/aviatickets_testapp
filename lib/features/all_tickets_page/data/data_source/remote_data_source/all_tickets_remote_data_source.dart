import 'package:aviatickets_testapp/features/all_tickets_page/data/model/all_tickets_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'all_tickets_remote_data_source.g.dart';

@RestApi(baseUrl: 'https://run.mocky.io/v3')
abstract class AllTicketsRemoteDataSource {
  factory AllTicketsRemoteDataSource(Dio dio) = _AllTicketsRemoteDataSource;

  @GET('/2dbc0999-86bf-4c08-8671-bac4b7a5f7eb')
  Future<AllTicketsModel> fetchAllTickets();
}

@lazySingleton
class AllTicketsRemoteDataSourceClient {
  AllTicketsRemoteDataSource client() {
    return _AllTicketsRemoteDataSource(Dio());
  }
}
