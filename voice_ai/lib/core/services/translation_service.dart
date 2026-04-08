import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:voice_ai/core/network/api_endpoints.dart';

@lazySingleton
class TranslationService {
  final _dio = Dio();

  Future<String?> uploadVoice(String path) async {
    File voice = File(path);
    _dio.options.headers = {'x-gladia-key': ApiEndpoints.apiKey};
    final formData = FormData.fromMap({
      'audio': await MultipartFile.fromFile(
        voice.path,
        filename: voice.path.split('/').last,
      ),
    });

    final response = await _dio.post(
      "${ApiEndpoints.baseUrl}${ApiEndpoints.upload}",
      data: formData,
    );

    if (response.statusCode == 202 || response.statusCode == 200) {
      return response.data['audio_url'];
    } else {
      return null;
    }
  }

  Future<String?> transcribeAudio(String url) async {
    _dio.options.headers = {'x-gladia-key': ApiEndpoints.apiKey};

    final response = await _dio.post(
      '${ApiEndpoints.baseUrl}${ApiEndpoints.preRecorded}',
      data: {
        "audio_url": url,
        "language_config": {
          "languages": ['ar'],
          "code_switching": false,
        },
        "diarization": true,
        "diarization_config": {
          "number_of_speakers": 3,
          "min_speakers": 1,
          "max_speakers": 5,
        },
        "translation": true,
        "translation_config": {
          "model": "base",
          "target_languages": ["ar", 'en'],
          "context_adaptation": true,
          "context": "Business meeting discussing quarterly results",
          "informal": false,
        },
        "subtitles": true,
        "subtitles_config": {
          "formats": ["srt", "vtt"],
        },
      },
    );
    if (response.statusCode == 200 ||
        response.statusCode == 202 ||
        response.statusCode == 201) {
    
      return response.data['id'];
    } else {
  
      return null;
    }
  }

  Future<String> getTranslation(String id) async {
    _dio.options.headers = _dio.options.headers = {
      'x-gladia-key': ApiEndpoints.apiKey,
    };

    while (true) {
      final response = await _dio.get("${ApiEndpoints.preRecordedById}$id");

      if (response.data['status'] == 'done' ||
          response.data['status'] == 'error') {
        return response.data['result']['transcription']['full_transcript'];
      }
      Future.delayed(Duration(seconds: 1));
    }
  }
}
