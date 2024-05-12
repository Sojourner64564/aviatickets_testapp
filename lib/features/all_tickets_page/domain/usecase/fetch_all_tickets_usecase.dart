import 'package:aviatickets_testapp/core/error/failure.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/domain/entity/all_tickets_entity.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/domain/repository/fetch_all_tickets_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FetchAllTicketsUsecase implements FetchAllTicketsRepository{
  final FetchAllTicketsRepository fetchAllTicketsRepository;

  FetchAllTicketsUsecase(this.fetchAllTicketsRepository);
  @override
  Future<Either<Failure, AllTicketsEntity>> fetchAllTickets() {
    // TODO: implement fetchAllTickets
    throw UnimplementedError();
  }

}