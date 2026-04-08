import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voice_ai/features/home/presentation/cubit/home_cubit.dart';
import 'package:voice_ai/features/home/presentation/cubit/home_state.dart';
import 'package:voice_ai/features/sub/voice/presentation/pages/voice_feature_widget.dart';

class HomeFeatureScreen extends StatelessWidget {
  const HomeFeatureScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('Home Feature Screen')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 40,
          crossAxisAlignment: .center,
          mainAxisAlignment: .center,
        
          children: [
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state is GetPathState) {
                  return Text(
                    "The path is:\n ${state.path}",
                    style: TextStyle(color: Colors.red),textAlign: .center,
                  );
                }
                return Text("Here is Home Screen");
              },
            ),
            Center(
              child: VoiceFeatureWidget(
                getPath: (value, value2) {
                  cubit.updatePath(value, value2);
                },
              ),
            ),
        
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state is GetPathState) {
                  return Center(child: Text("The text is\n${state.text}", textAlign: .center));
                }
                return SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}
