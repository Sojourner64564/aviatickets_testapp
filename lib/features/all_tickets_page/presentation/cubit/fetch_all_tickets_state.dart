part of 'fetch_all_tickets_cubit.dart';

@immutable
abstract class FetchAllTicketsState {}

class FetchAllTicketsStateInitial extends FetchAllTicketsState {}
class FetchAllTicketsStateLoading extends FetchAllTicketsState {}
class FetchAllTicketsStateLoaded extends FetchAllTicketsState {
  final AllTicketsEntity allTicketsEntity;

  FetchAllTicketsStateLoaded(this.allTicketsEntity);
}
class FetchAllTicketsStateError extends FetchAllTicketsState {}
class FetchAllTicketsStateEmpty extends FetchAllTicketsState {}

