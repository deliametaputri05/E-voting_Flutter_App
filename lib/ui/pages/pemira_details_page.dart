part of 'pages.dart';

class PemiraDetailsPage extends StatefulWidget {
  final Function onBackButtonPressed;
  final Kandidat kandidat;

  PemiraDetailsPage({this.onBackButtonPressed, this.kandidat});

  @override
  State<PemiraDetailsPage> createState() => _PemiraDetailsPageState();
}

class _PemiraDetailsPageState extends State<PemiraDetailsPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            // image: DecorationImage(
            //   image: NetworkImage(widget.kandidat.foto),
            //   fit: BoxFit.cover,
            // )
          ),
        ),
        title: Text(widget.kandidat.clnKetua.nama),
        subtitle: Text(widget.kandidat.noUrut.toString()),
      ),
    );
  }
}
