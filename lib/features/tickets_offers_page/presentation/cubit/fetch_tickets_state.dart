part of 'fetch_tickets_cubit.dart';

@immutable
abstract class FetchTicketsState {}

class FetchTicketsStateInitial extends FetchTicketsState {}

class FetchTicketsStateLoading extends FetchTicketsState {}

class FetchTicketsStateLoaded extends FetchTicketsState {
  final TicketsEntity ticketsEntity;

  FetchTicketsStateLoaded(this.ticketsEntity);
}

class FetchTicketsStateEmpty extends FetchTicketsState {}

class FetchTicketsStateError extends FetchTicketsState {}
