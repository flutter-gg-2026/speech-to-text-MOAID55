import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voice_ai/features/home/domain/use_cases/home_use_case.dart';
import 'package:voice_ai/features/home/presentation/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeUseCase _homeUseCase;

  HomeCubit(this._homeUseCase) : super(HomeInitialState());

  Future<void> getHomeMethod() async {
    final result = await _homeUseCase.getHome();
    result.when((success) {}, (whenError) {
      //here is when error result
    });
  }

  void updatePath(String path, String text) {
    emit(GetPathState(path: path,text: text));
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
