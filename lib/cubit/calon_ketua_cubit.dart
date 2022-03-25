import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:evoting_flutter/models/models.dart';
import 'package:evoting_flutter/services/services.dart';

part 'calon_ketua_state.dart';

class CalonKetuaCubit extends Cubit<CalonKetuaState> {
  CalonKetuaCubit() : super(CalonKetuaInitial());

  Future<void> getCalonKetua() async {
    ApiReturnValue<List<CalonKetua>> result =
        await CalonKetuaServices.getCalonKetua();

    if (result.value != null) {
      emit(CalonKetuaLoaded(result.value));
    } else {
      emit(CalonKetuaLoadingFailed(result.message));
    }
  }
}
