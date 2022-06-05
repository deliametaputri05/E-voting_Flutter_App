part of 'widgets.dart';

class KandidatListItem extends StatelessWidget {
  final data;

  KandidatListItem(this.data);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(data.foto),
      ),
      title: Text(data.nama),
      subtitle: Text(data.nim),
      trailing: Text(data.jurusan),
    );
  }
}
