part of 'vote_cubit.dart';

abstract class VoteState extends Equatable {
  const VoteState();

  @override
  List<Object> get props => [];
}

class VoteInitial extends VoteState {}

class VoteLoaded extends VoteState {
  final List<Vote> vote;

  VoteLoaded(this.vote);

  @override
  List<Object> get props => [vote];
}

class VoteLoadingFailed extends VoteState {
  final String message;

  VoteLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}
