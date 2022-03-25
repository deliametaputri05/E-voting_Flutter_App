import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:evoting_flutter/models/models.dart';
import 'package:evoting_flutter/services/services.dart';

part 'calon_wakil_state.dart';

class CalonWakilCubit extends Cubit<CalonWakilState> {
  CalonWakilCubit() : super(CalonWakilInitial());

  Future<void> getCalonWakil() async {
    ApiReturnValue<List<CalonWakil>> result =
        await CalonWakilServices.getCalonWakil();

    if (result.value != null) {
      emit(CalonWakilLoaded(result.value));
    } else {
      emit(CalonWakilLoadingFailed(result.message));
    }
  }
}
