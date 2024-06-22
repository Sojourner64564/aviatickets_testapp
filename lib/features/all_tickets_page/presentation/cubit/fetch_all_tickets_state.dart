part of 'fetch_all_tickets_cubit.dart';

@immutable
abstract class FetchAllTicketsState extends Equatable{}

class FetchAllTicketsStateInitial extends FetchAllTicketsState {
  @override
  List<Object?> get props => [];
}
class FetchAllTicketsStateLoading extends FetchAllTicketsState {
  @override
  List<Object?> get props => [];
}
class FetchAllTicketsStateLoaded extends FetchAllTicketsState {
  final AllTicketsEntity allTicketsEntity;

  FetchAllTicketsStateLoaded(this.allTicketsEntity);

  @override
  List<Object?> get props => [allTicketsEntity];
}
class FetchAllTicketsStateError extends FetchAllTicketsState {
  @override
  List<Object?> get props => [];
}
class FetchAllTicketsStateEmpty extends FetchAllTicketsState {
  @override
  List<Object?> get props => [];
}

