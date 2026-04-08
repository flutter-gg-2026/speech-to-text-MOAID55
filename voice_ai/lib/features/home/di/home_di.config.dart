// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;
import 'package:voice_ai/core/services/local_keys_service.dart' as _i635;
import 'package:voice_ai/features/home/data/datasources/home_remote_data_source.dart'
    as _i812;
import 'package:voice_ai/features/home/data/repositories/home_repository_data.dart'
    as _i448;
import 'package:voice_ai/features/home/domain/repositories/home_repository_domain.dart'
    as _i425;
import 'package:voice_ai/features/home/domain/use_cases/home_use_case.dart'
    as _i1072;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initHome({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i812.BaseHomeRemoteDataSource>(
      () => _i812.HomeRemoteDataSource(
        gh<_i635.LocalKeysService>(),
        gh<_i454.SupabaseClient>(),
      ),
    );
    gh.lazySingleton<_i425.HomeRepositoryDomain>(
      () => _i448.HomeRepositoryData(gh<_i812.BaseHomeRemoteDataSource>()),
    );
    gh.lazySingleton<_i1072.HomeUseCase>(
      () => _i1072.HomeUseCase(gh<_i425.HomeRepositoryDomain>()),
    );
    return this;
  }
}
