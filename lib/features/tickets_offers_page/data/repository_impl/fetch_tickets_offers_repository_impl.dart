import 'package:aviatickets_testapp/core/error/failure.dart';
import 'package:aviatickets_testapp/core/network/network_info.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/data/models/extension/extension_tickets_model_to_entity.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/data/models/tickets_model.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/data/remote_data_source/tickets_offers_remote_data_source.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/domain/entity/tickets_entity.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/domain/repository/fetch_tickets_offers_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: FetchTicketsOffersRepository)
class FetchTicketsOffersRepositoryImpl implements FetchTicketsOffersRepository {
  final NetworkInfo networkInfo;
  final TicketsOffersRemoteDataSourceClient ticketsOffersRemoteDataSourceClient;
  FetchTicketsOffersRepositoryImpl(
      this.networkInfo, this.ticketsOffersRemoteDataSourceClient);

  @override
  Future<Either<Failure, TicketsEntity>> fetchTickets() async {
    if (!await networkInfo.isConnected) return Left(ServerFailure());
    try {
      //final ticketsModel = await ticketsOffersRemoteDataSourceClient.client().fetchTickets();
      final modelMock = TicketsModel.fromJson(myMap);

      final ticketsEntity = modelMock.toEntity();
      return Right(ticketsEntity);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  final Map<String,dynamic> myMap = {
      "tickets_offers": [
        {
          "id": 1,
          "title": "Уральские авиалинии",
          "time_range": [
            "07:00",
            "09:10",
            "10:00",
            "11:30",
            "14:15",
            "19:10",
            "21:00",
            "23:30"
          ],
          "price": {
            "value": 3999
          }
        },
        {
          "id": 10,
          "title": "Победа",
          "time_range": [
            "09:10",
            "21:00"
          ],
          "price": {
            "value": 4999
          }
        },
        {
          "id": 30,
          "title": "NordStar",
          "time_range": [
            "07:00"
          ],
          "price": {
            "value": 2390
          }
        }
      ]
  };
  }
