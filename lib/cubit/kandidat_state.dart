part of 'kandidat_cubit.dart';

abstract class KandidatState extends Equatable {
  const KandidatState();

  @override
  List<Object> get props => [];
}

class KandidatInitial extends KandidatState {}

class KandidatLoaded extends KandidatState {
  final List<Kandidat> kandidat;

  KandidatLoaded(this.kandidat);

  @override
  List<Object> get props => [kandidat];
}

class KandidatLoadingFailed extends KandidatState {
  final String message;

  KandidatLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}
