import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:voice_ai/core/errors/network_exceptions.dart';
import 'package:voice_ai/core/errors/failure.dart';
import 'package:voice_ai/features/sub/voice/domain/entities/voice_entity.dart';

import 'package:voice_ai/features/sub/voice/data/datasources/voice_remote_data_source.dart';
import 'package:voice_ai/features/sub/voice/data/models/voice_model.dart';
import 'package:voice_ai/features/sub/voice/domain/repositories/voice_repository_domain.dart';

@LazySingleton(as: VoiceRepositoryDomain)
class VoiceRepositoryData implements VoiceRepositoryDomain {
  final BaseVoiceRemoteDataSource remoteDataSource;

  VoiceRepositoryData(this.remoteDataSource);

  @override
  Future<Result<bool, Failure>> startVoice() async {
    try {
      await remoteDataSource.startVoice();
      return Success(true);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }

  @override
  Future<Result<VoiceEntity, Failure>> stopVoice() async {
    try {
      final response = await remoteDataSource.stopVoice();
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }

  @override
  Future<Result<bool, Failure>> playVoice(String path) async {
    await remoteDataSource.playAudio(path);
    
    try {
      await remoteDataSource.playAudio(path);
      return Success(true);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
