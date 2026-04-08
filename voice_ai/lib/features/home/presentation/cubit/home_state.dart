import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

class HomeInitialState extends HomeState {}

class HomeSuccessState extends HomeState {}

class GetPathState extends HomeState {
  final String path;
  final String text;
  const GetPathState({required this.path, required this.text});

  @override
  List<Object?> get props => [path];
}

class HomeErrorState extends HomeState {
  final String message;
  const HomeErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
