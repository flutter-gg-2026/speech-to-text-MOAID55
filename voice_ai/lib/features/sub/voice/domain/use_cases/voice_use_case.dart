import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:voice_ai/core/errors/failure.dart';
import 'package:voice_ai/features/sub/voice/domain/entities/voice_entity.dart';
import 'package:voice_ai/features/sub/voice/domain/repositories/voice_repository_domain.dart';

@lazySingleton
class VoiceUseCase {
  final VoiceRepositoryDomain _repositoryData;

  VoiceUseCase(this._repositoryData);

  Future<Result<bool, Failure>> startVoice() async {
    return _repositoryData.startVoice();
  }

  Future<Result<VoiceEntity, Failure>> stopVoice() async {
    return _repositoryData.stopVoice();
  }
  Future<Result<bool, Failure>> playVoice(String path) async {
    return _repositoryData.playVoice(path);
  }
}
