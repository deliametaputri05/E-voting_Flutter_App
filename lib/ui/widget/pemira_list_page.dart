part of 'widgets.dart';

class PemiraListPage extends StatelessWidget {
  final Kandidat kandidat;

  PemiraListPage(this.kandidat);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 220.0,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        elevation: 3,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 80,
                        // color: Colors.grey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              kandidat.pemira.tanggal,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'Mulai',
                              style: TextStyle(fontSize: 11),
                            ),
                            Text(
                              kandidat.pemira.waktuMulai,
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w300),
                            ),
                            Text(
                              'Selesai',
                              style: TextStyle(fontSize: 11),
                            ),
                            Text(
                              kandidat.pemira.waktuSelesai,
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                      image: (kandidat.ormawa.logo == null)
                                          ? AssetImage('assets/photo.png')
                                          : NetworkImage(kandidat.ormawa.logo),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 210,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 210,
                              height: 100,
                              decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                image: (kandidat.pemira.foto == null)
                                    ? AssetImage('assets/photo.png')
                                    : NetworkImage(kandidat.pemira.foto),
                                fit: BoxFit.cover,
                              )),
                            ),
                            Text(kandidat.pemira.nama,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500)),
                            Text(kandidat.pemira.deskripsi,
                                style: TextStyle(fontSize: 11)),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
