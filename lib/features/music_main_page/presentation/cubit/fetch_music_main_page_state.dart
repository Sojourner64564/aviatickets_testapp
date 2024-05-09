part of 'fetch_music_main_page_cubit.dart';

@immutable
abstract class FetchMusicMainPageState {}

class FetchMusicMainPageInitialState extends FetchMusicMainPageState {}
class FetchMusicMainPageLoadingState extends FetchMusicMainPageState {}
class FetchMusicMainPageLoadedState extends FetchMusicMainPageState {
  final MusicEntity musicEntity;

  FetchMusicMainPageLoadedState(this.musicEntity);
}
class FetchMusicMainPageErrorState extends FetchMusicMainPageState {}
class FetchMusicMainPageEmptyState extends FetchMusicMainPageState {}
