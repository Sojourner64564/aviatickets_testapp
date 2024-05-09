import 'package:aviatickets_testapp/features/tickets_offers_page/data/models/tickets_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'tickets_offers_remote_data_source.g.dart';

@RestApi(baseUrl: 'https://run.mocky.io/v3')
abstract class TicketsOffersRemoteDataSource{
  factory TicketsOffersRemoteDataSource(Dio dio) = _TicketsOffersRemoteDataSource;

  @GET('/3424132d-a51a-4613-b6c9-42b2d214f35f')
  Future<TicketsModel> fetchTickets();


}


@lazySingleton
class TicketsOffersRemoteDataSourceClient{
  TicketsOffersRemoteDataSource client(){
    return _TicketsOffersRemoteDataSource(Dio());
  }
}