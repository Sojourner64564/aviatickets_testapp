part of 'fetch_tickets_cubit.dart';

@immutable
abstract class FetchTicketsState extends Equatable{}

class FetchTicketsStateInitial extends FetchTicketsState {
  @override
  List<Object?> get props => [];
}

class FetchTicketsStateLoading extends FetchTicketsState {
  @override
List<Object?> get props => [];
}

class FetchTicketsStateLoaded extends FetchTicketsState {
  final TicketsEntity ticketsEntity;

  FetchTicketsStateLoaded(this.ticketsEntity);
  @override
  List<Object?> get props => [ticketsEntity];
}

class FetchTicketsStateEmpty extends FetchTicketsState {
  @override
  List<Object?> get props => [];
}

class FetchTicketsStateError extends FetchTicketsState {
  @override
  List<Object?> get props => [];
}
