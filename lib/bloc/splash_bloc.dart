import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

abstract class SplashEvent extends Equatable {
  const SplashEvent();
}

class LoadSplashEvent extends SplashEvent {
  @override
  List<Object> get props => [];
}

abstract class SplashState extends Equatable {
  const SplashState();
}

class SplashInitial extends SplashState {
  @override
  List<Object> get props => [];
}

class SplashLoaded extends SplashState {
  @override
  List<Object> get props => [];
}

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<LoadSplashEvent>((event, emit) async {
      await Future.delayed(const Duration(seconds: 2));
      emit(SplashLoaded());
    });
  }
}