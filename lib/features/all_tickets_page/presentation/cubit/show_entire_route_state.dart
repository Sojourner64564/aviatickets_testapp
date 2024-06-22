part of 'show_entire_route_cubit.dart';

@immutable
abstract class ShowEntireRouteState extends Equatable{}

class ShowEntireRouteStateInitial extends ShowEntireRouteState {
  @override
  List<Object?> get props => [];
}
class ShowEntireRouteStateLoading extends ShowEntireRouteState {
  @override
  List<Object?> get props => [];
}
class ShowEntireRouteStateLoaded extends ShowEntireRouteState {
  final String text;

  ShowEntireRouteStateLoaded(this.text);

  @override
  List<Object?> get props => [text];
}
class ShowEntireRouteStateError extends ShowEntireRouteState {
  @override
  List<Object?> get props => [];
}
