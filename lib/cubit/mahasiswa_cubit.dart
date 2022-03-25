import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:evoting_flutter/models/models.dart';
import 'package:evoting_flutter/services/services.dart';

part 'mahasiswa_state.dart';

class MahasiswaCubit extends Cubit<MahasiswaState> {
  MahasiswaCubit() : super(MahasiswaInitial());

  Future<void> getMahasiswa() async {
    ApiReturnValue<List<Mahasiswa>> result =
        await MahasiswaServices.getMahasiswa();

    if (result.value != null) {
      emit(MahasiswaLoaded(result.value));
    } else {
      emit(MahasiswaLoadingFailed(result.message));
    }
  }
}
