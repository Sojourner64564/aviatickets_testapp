import 'package:aviatickets_testapp/core/error/failure.dart';
import 'package:aviatickets_testapp/core/network/network_info.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/data/models/extension/extension_tickets_model_to_entity.dart';
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
      final ticketsModel = await ticketsOffersRemoteDataSourceClient.client().fetchTickets();
      final ticketsEntity = ticketsModel.toEntity();
      return Right(ticketsEntity);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
