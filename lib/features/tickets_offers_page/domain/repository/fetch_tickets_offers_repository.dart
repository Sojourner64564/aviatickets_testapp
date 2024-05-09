import 'package:aviatickets_testapp/core/error/failure.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/domain/entity/tickets_entity.dart';
import 'package:dartz/dartz.dart';

abstract class FetchTicketsOffersRepository{
  Future<Either<Failure, TicketsEntity>> fetchTickets();
}