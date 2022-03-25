import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:evoting_flutter/models/models.dart';
import 'package:evoting_flutter/services/services.dart';

part 'pemira_state.dart';

class PemiraCubit extends Cubit<PemiraState> {
  PemiraCubit() : super(PemiraInitial());

  Future<void> getPemira() async {
    ApiReturnValue<List<Pemira>> result = await PemiraServices.getPemira();

    if (result.value != null) {
      emit(PemiraLoaded(result.value));
    } else {
      emit(PemiraLoadingFailed(result.message));
    }
  }
}
