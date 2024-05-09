import 'package:aviatickets_testapp/core/error/failure.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/domain/entity/tickets_entity.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/domain/repository/fetch_tickets_offers_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchTicketsOffersUsecase implements FetchTicketsOffersRepository{
  final FetchTicketsOffersRepository fetchTicketsOffersRepository;

  FetchTicketsOffersUsecase(this.fetchTicketsOffersRepository);

  @override
  Future<Either<Failure, TicketsEntity>> fetchTickets() async{
    return await fetchTicketsOffersRepository.fetchTickets();
  }

}