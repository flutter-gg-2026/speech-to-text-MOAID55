import 'package:injectable/injectable.dart';
import 'package:voice_ai/core/services/translation_service.dart';
import 'package:voice_ai/core/services/voice_service.dart';
import 'package:voice_ai/features/sub/voice/data/models/voice_model.dart';
import 'package:voice_ai/core/errors/network_exceptions.dart';

abstract class BaseVoiceRemoteDataSource {
  Future<bool> startVoice();
  Future<VoiceModel> stopVoice();
  Future<bool> playAudio(String path);
}

@LazySingleton(as: BaseVoiceRemoteDataSource)
class VoiceRemoteDataSource implements BaseVoiceRemoteDataSource {
  final VoiceService _voiceService;
  final TranslationService _translationService;

  // final SupabaseClient _supabase;
  // final LocalKeysService _localKeysService;

  VoiceRemoteDataSource(this._voiceService, this._translationService);

  @override
  Future<bool> startVoice() async {
    try {
      _voiceService.requestPermission();
      await _voiceService.startRecord();
      return (true);
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<VoiceModel> stopVoice() async {
    try {
      final voice = await _voiceService.stopRecord();
      final url = await _translationService.uploadVoice(voice!);
      final id = await _translationService.transcribeAudio(url!);
      final text = await _translationService.getTranslation(id!);

      return VoiceModel(path: voice, text: text);
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<bool> playAudio(String path) async {
    await _voiceService.startPlayerAudio(pathAudio: path);
    return true;
  }
}
