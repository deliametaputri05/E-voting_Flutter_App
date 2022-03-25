import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:evoting_flutter/models/models.dart';
import 'package:evoting_flutter/services/services.dart';

part 'vote_state.dart';

class VoteCubit extends Cubit<VoteState> {
  VoteCubit() : super(VoteInitial());

  Future<void> getVote() async {
    ApiReturnValue<List<Vote>> result = await VoteServices.getVote();

    if (result.value != null) {
      emit(VoteLoaded(result.value));
    } else {
      emit(VoteLoadingFailed(result.message));
    }
  }
}
