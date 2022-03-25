part of 'mahasiswa_cubit.dart';

abstract class MahasiswaState extends Equatable {
  const MahasiswaState();

  @override
  List<Object> get props => [];
}

class MahasiswaInitial extends MahasiswaState {}

class MahasiswaLoaded extends MahasiswaState {
  final List<Mahasiswa> mahasiswa;

  MahasiswaLoaded(this.mahasiswa);

  @override
  List<Object> get props => [mahasiswa];
}

class MahasiswaLoadingFailed extends MahasiswaState {
  final String message;

  MahasiswaLoadingFailed(this.message);

  @override
  List<Object> get props => [message];
}
