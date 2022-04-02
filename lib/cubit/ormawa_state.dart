part of 'ormawa_cubit.dart';

abstract class OrmawaState extends Equatable {
  const OrmawaState();

  @override
  List<Object> get props => [];
}

class OrmawaInitial extends OrmawaState {}

class OrmawaLoaded extends OrmawaState {
  final List<Ormawa> ormawa;

  OrmawaLoaded(this.ormawa);

  @override
  List<Object> get props => [ormawa];
}

class OrmawaLoadingFailed extends OrmawaState {
  final String message;

  OrmawaLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}
