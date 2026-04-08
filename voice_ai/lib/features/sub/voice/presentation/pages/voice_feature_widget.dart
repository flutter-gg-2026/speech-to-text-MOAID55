import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:voice_ai/core/constants/app_colors.dart';
import 'package:voice_ai/core/extensions/font_extensions.dart';
import 'package:voice_ai/features/sub/voice/presentation/cubit/voice_cubit.dart';
import 'package:voice_ai/features/sub/voice/presentation/cubit/voice_state.dart';

class VoiceFeatureWidget extends StatelessWidget {
  const VoiceFeatureWidget({super.key, required this.getPath});
  final Function(String, String) getPath;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VoiceCubit(GetIt.I.get()),
      child: Builder(
        builder: (context) {
          final cubit = context.read<VoiceCubit>();
          return Row(
            spacing: 5,
            crossAxisAlignment: .center,
            mainAxisAlignment: .center,
            children: [
              GestureDetector(
                onLongPress: () async {
                  await cubit.startVoiceMethod();
                },
                onLongPressUp: () async {
                  await cubit.stopVoiceMethod();
                },

                child: BlocBuilder<VoiceCubit, VoiceState>(
                  builder: (context, state) {
                    if (state is VoiceRecordingState && state.path != null) {
                      getPath(state.path!, state.text!);
                    }
                    return Container(
                      height: 10.sizeSW(min: 70, max: 170),
                      width: 10.sizeSW(min: 70, max: 170),
                      decoration: BoxDecoration(
                        color: state is VoiceRecordingState
                            ? state.start
                                  ? AppColors.success
                                  : AppColors.textSecondary
                            : AppColors.textSecondary,
                        shape: .circle,
                      ),
                      child: Icon(
                        Icons.mic,
                        color: Colors.white,
                      ).animate().fade(curve: Curves.easeInOut),
                    );
                  },
                ),
              ),
              BlocBuilder<VoiceCubit, VoiceState>(
                buildWhen: (context, state) {
                  if (State is VoiceFinishState) {
                    return false;
                  }
                  return true;
                },
                builder: (context, state) {
                  if (state is VoiceRecordingState) {
                    return InkWell(
                      onTap: () {
                        cubit.playVoiceMethod(state.path!);
                      },
                      child: Container(
                        height: 10.sizeSW(min: 70, max: 170),
                        width: 10.sizeSW(min: 70, max: 170),
                        decoration: BoxDecoration(
                          shape: .circle,
                          color: Colors.green,
                        ),
                        child: Icon(Icons.play_arrow),
                      ),
                    );
                  }
                  return SizedBox.shrink();
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
