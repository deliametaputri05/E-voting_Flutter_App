part of 'calon_ketua_cubit.dart';

abstract class CalonKetuaState extends Equatable {
  const CalonKetuaState();

  @override
  List<Object> get props => [];
}

class CalonKetuaInitial extends CalonKetuaState {}

class CalonKetuaLoaded extends CalonKetuaState {
  final List<CalonKetua> calonKetua;

  CalonKetuaLoaded(this.calonKetua);

  @override
  List<Object> get props => [calonKetua];
}

class CalonKetuaLoadingFailed extends CalonKetuaState {
  final String message;

  CalonKetuaLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}
