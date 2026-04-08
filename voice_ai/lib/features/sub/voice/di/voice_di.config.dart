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
import 'package:voice_ai/core/services/translation_service.dart' as _i536;
import 'package:voice_ai/core/services/voice_service.dart' as _i212;
import 'package:voice_ai/features/sub/voice/data/datasources/voice_remote_data_source.dart'
    as _i261;
import 'package:voice_ai/features/sub/voice/data/repositories/voice_repository_data.dart'
    as _i159;
import 'package:voice_ai/features/sub/voice/domain/repositories/voice_repository_domain.dart'
    as _i271;
import 'package:voice_ai/features/sub/voice/domain/use_cases/voice_use_case.dart'
    as _i270;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initVoiceSub({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i261.BaseVoiceRemoteDataSource>(
      () => _i261.VoiceRemoteDataSource(
        gh<_i212.VoiceService>(),
        gh<_i536.TranslationService>(),
      ),
    );
    gh.lazySingleton<_i271.VoiceRepositoryDomain>(
      () => _i159.VoiceRepositoryData(gh<_i261.BaseVoiceRemoteDataSource>()),
    );
    gh.lazySingleton<_i270.VoiceUseCase>(
      () => _i270.VoiceUseCase(gh<_i271.VoiceRepositoryDomain>()),
    );
    return this;
  }
}
