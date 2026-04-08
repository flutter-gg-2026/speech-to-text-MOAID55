import 'package:multiple_result/multiple_result.dart';
import 'package:voice_ai/core/errors/failure.dart';
import 'package:voice_ai/features/sub/voice/domain/entities/voice_entity.dart';

abstract class VoiceRepositoryDomain {
  Future<Result<bool, Failure>> startVoice();
  Future<Result<VoiceEntity, Failure>> stopVoice();
  Future<Result<bool, Failure>> playVoice(String path);
}
