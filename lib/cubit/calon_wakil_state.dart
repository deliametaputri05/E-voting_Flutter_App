part of 'calon_wakil_cubit.dart';

abstract class CalonWakilState extends Equatable {
  const CalonWakilState();

  @override
  List<Object> get props => [];
}

class CalonWakilInitial extends CalonWakilState {}

class CalonWakilLoaded extends CalonWakilState {
  final List<CalonWakil> calonWakil;

  CalonWakilLoaded(this.calonWakil);

  @override
  List<Object> get props => [calonWakil];
}

class CalonWakilLoadingFailed extends CalonWakilState {
  final String message;

  CalonWakilLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}
