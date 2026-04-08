import 'package:equatable/equatable.dart';

abstract class VoiceState extends Equatable {
  const VoiceState();

  @override
  List<Object?> get props => [];
}

class VoiceInitialState extends VoiceState {}

class VoiceRecordingState extends VoiceState {
  final bool start;
  final String? path;
  final String? text;
  const VoiceRecordingState({required this.start, this.path, this.text});

  @override
  List<Object?> get props => [start, path];
}

class VoiceSuccessState extends VoiceState {}

class VoiceFinishState extends VoiceState {
  final bool check;
  const VoiceFinishState({required this.check});

  @override
  List<Object?> get props => [check];
}

class VoiceErrorState extends VoiceState {
  final String message;

  const VoiceErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
