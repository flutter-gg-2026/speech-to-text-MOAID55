import 'dart:io';
import 'package:just_audio/just_audio.dart';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';
import 'package:uuid/v7.dart';
import 'package:voice_ai/core/errors/failure.dart';

@lazySingleton
class VoiceService {

  final _record = AudioRecorder();
  final _player = AudioPlayer();

  void requestPermission() async {
    final hasPermission = await _record.hasPermission(request: true);
    if (!hasPermission) {
      throw PermissionFailure("record not allow");
    }
  }

  //----

  Future<void> startRecord() async {
    final Directory tempDir = await getTemporaryDirectory();
    final name = UuidV7().generate();

    await _record.start(
      const RecordConfig(
        encoder: AudioEncoder.aacLc,
        androidConfig: AndroidRecordConfig(),
      ),
      path: '${tempDir.path}/$name.m4a',
    );
  }

  Future<String?> stopRecord() async {
    final path = await _record.stop();

    return path;
  }

  Future<void> startPlayerAudio({required String pathAudio}) async {
    await _player.setFilePath(pathAudio);
    await _player.play();
  }

  Future<void> stopPlayerAudio() async {
    await _player.stop();
  }

  
}
