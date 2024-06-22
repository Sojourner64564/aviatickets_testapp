part of 'fetch_music_main_page_cubit.dart';

@immutable
abstract class FetchMusicMainPageState extends Equatable{}

class FetchMusicMainPageInitialState extends FetchMusicMainPageState {
  @override
  List<Object?> get props => [];
}
class FetchMusicMainPageLoadingState extends FetchMusicMainPageState {
  @override
  List<Object?> get props => [];
}
class FetchMusicMainPageLoadedState extends FetchMusicMainPageState {
  final MusicEntity musicEntity;

  FetchMusicMainPageLoadedState(this.musicEntity);

  @override
  List<Object?> get props => [musicEntity];
}
class FetchMusicMainPageErrorState extends FetchMusicMainPageState {
  @override
  List<Object?> get props => [];
}
class FetchMusicMainPageEmptyState extends FetchMusicMainPageState {
  @override
  List<Object?> get props => [];
}
