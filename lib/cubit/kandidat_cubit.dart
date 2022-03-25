import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:evoting_flutter/models/models.dart';
import 'package:evoting_flutter/services/services.dart';

part 'kandidat_state.dart';

class KandidatCubit extends Cubit<KandidatState> {
  KandidatCubit() : super(KandidatInitial());

  Future<void> getKandidat() async {
    ApiReturnValue<List<Kandidat>> result =
        await KandidatServices.getKandidat();

    if (result.value != null) {
      emit(KandidatLoaded(result.value));
    } else {
      emit(KandidatLoadingFailed(result.message));
    }
  }
}
