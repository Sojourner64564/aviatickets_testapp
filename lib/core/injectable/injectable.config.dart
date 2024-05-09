// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i3;

import '../../features/music_main_page/data/data_source/music_remote_data_source/music_remote_data_source.dart'
    as _i5;
import '../../features/music_main_page/data/repository_impl/fetch_music_repository_impl.dart'
    as _i9;
import '../../features/music_main_page/domain/repository/fetch_music_repository.dart'
    as _i8;
import '../../features/music_main_page/domain/usecase/fetch_music_usecase.dart'
    as _i10;
import '../../features/music_main_page/presentation/cubit/fetch_music_main_page_cubit.dart'
    as _i11;
import '../network/internet_connection_checker.dart' as _i12;
import '../network/network_info.dart' as _i6;
import '../network/network_info_impl.dart' as _i7;
import '../route/route.dart' as _i4;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModuleConnectionChecker = _$RegisterModuleConnectionChecker();
  gh.factory<_i3.InternetConnectionChecker>(
      () => registerModuleConnectionChecker.internetConnection);
  gh.lazySingleton<_i4.AppRouter>(() => _i4.AppRouter());
  gh.lazySingleton<_i5.MusicRemoteDataSourceClient>(
      () => _i5.MusicRemoteDataSourceClient());
  gh.lazySingleton<_i6.NetworkInfo>(
      () => _i7.NetworkInfoImpl(gh<_i3.InternetConnectionChecker>()));
  gh.lazySingleton<_i8.FetchMusicRepository>(() => _i9.FetchMusicRepositoryImpl(
        gh<_i6.NetworkInfo>(),
        gh<_i5.MusicRemoteDataSourceClient>(),
      ));
  gh.factory<_i10.FetchMusicUsecase>(
      () => _i10.FetchMusicUsecase(gh<_i8.FetchMusicRepository>()));
  gh.lazySingleton<_i11.FetchMusicMainPageCubit>(
      () => _i11.FetchMusicMainPageCubit(gh<_i10.FetchMusicUsecase>()));
  return getIt;
}

class _$RegisterModuleConnectionChecker
    extends _i12.RegisterModuleConnectionChecker {}
