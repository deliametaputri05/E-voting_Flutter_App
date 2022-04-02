part of 'widgets.dart';

class OrmawaCard extends StatelessWidget {
  final Ormawa ormawa;

  OrmawaCard(this.ormawa);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            ormawa.logo,
            width: 50,
            fit: BoxFit.cover,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        elevation: 5,
      ),
    );
  }
}
