part of 'widgets.dart';

class KandidatListItem extends StatelessWidget {
  final Kandidat kandidat;

  KandidatListItem(this.kandidat);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: NetworkImage(kandidat.foto),
                        fit: BoxFit.cover,
                      )),
                ),
                Text(
                  kandidat.noUrut.toString(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
