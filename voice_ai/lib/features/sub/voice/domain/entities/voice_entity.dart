import 'package:equatable/equatable.dart';

class VoiceEntity extends Equatable {
  final String path;
  final String text;

  const VoiceEntity({required this.path,required this.text});

  @override
  List<Object?> get props => [path,text];
}
