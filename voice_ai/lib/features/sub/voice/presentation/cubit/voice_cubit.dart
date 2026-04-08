import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voice_ai/features/sub/voice/domain/use_cases/voice_use_case.dart';
import 'package:voice_ai/features/sub/voice/presentation/cubit/voice_state.dart';

class VoiceCubit extends Cubit<VoiceState> {
  final VoiceUseCase _voiceUseCase;

  VoiceCubit(this._voiceUseCase) : super(VoiceInitialState());

  Future<void> startVoiceMethod() async {
    final result = await _voiceUseCase.startVoice();
    result.when(
      (success) {
        emit(VoiceRecordingState(start: true));
      },
      (whenError) {
        emit(VoiceErrorState(message: whenError.message));
      },
    );
  }

  Future<void> stopVoiceMethod() async {
    final result = await _voiceUseCase.stopVoice();
    result.when(
      (success) {
        emit(
          VoiceRecordingState(
            start: false,
            path: success.path,
            text: success.text,
          ),
        );
      },
      (whenError) {
        emit(VoiceErrorState(message: whenError.message));
      },
    );
  }

  Future<void> playVoiceMethod(String path) async {
    await _voiceUseCase.playVoice(path);
    emit(VoiceFinishState(check: false));
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
