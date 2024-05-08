import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'fetch_music_main_page_state.dart';

class FetchMusicMainPageCubit extends Cubit<FetchMusicMainPageState> {
  FetchMusicMainPageCubit() : super(FetchMusicMainPageInitial());
}
