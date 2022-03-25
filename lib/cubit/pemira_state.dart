part of 'pemira_cubit.dart';

abstract class PemiraState extends Equatable {
  const PemiraState();

  @override
  List<Object> get props => [];
}

class PemiraInitial extends PemiraState {}

class PemiraLoaded extends PemiraState {
  final List<Pemira> pemira;

  PemiraLoaded(this.pemira);

  @override
  List<Object> get props => [pemira];
}

class PemiraLoadingFailed extends PemiraState {
  final String message;

  PemiraLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}
