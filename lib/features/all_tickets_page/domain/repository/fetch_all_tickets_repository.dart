import 'package:aviatickets_testapp/core/error/failure.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/domain/entity/all_tickets_entity.dart';
import 'package:dartz/dartz.dart';

abstract class FetchAllTicketsRepository{
  Future<Either<Failure, AllTicketsEntity>> fetchAllTickets();
}