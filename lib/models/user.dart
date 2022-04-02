part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String picturePath;
  static String token;

  User({this.id, this.name, this.email, this.picturePath});

  factory User.fromJson(Map<String, dynamic> data) => User(
        id: data['id'],
        name: data['name'],
        email: data['email'],
        picturePath: data['profile_photo_url'],
      );

  User copyWith({
    int id,
    String name,
    String email,
    String address,
    String noHp,
    String picturePath,
  }) =>
      User(
          id: id ?? this.id,
          name: name ?? this.name,
          email: email ?? this.email,
          picturePath: picturePath ?? this.picturePath);

  @override
  List<Object> get props => [id, name, email, picturePath];
}
