import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:evoting_flutter/models/models.dart';
import 'package:evoting_flutter/services/services.dart';

part 'ormawa_state.dart';

class OrmawaCubit extends Cubit<OrmawaState> {
  OrmawaCubit() : super(OrmawaInitial());

  Future<void> getOrmawa() async {
    ApiReturnValue<List<Ormawa>> result = await OrmawaServices.getOrmawa();

    if (result.value != null) {
      emit(OrmawaLoaded(result.value));
    } else {
      emit(OrmawaLoadingFailed(result.message));
    }
  }
}
