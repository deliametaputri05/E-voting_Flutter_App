part of 'widgets.dart';

class PemiraCard extends StatelessWidget {
  final Pemira pemira;

  PemiraCard(this.pemira);

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
                              pemira.tanggal,
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
                              pemira.waktuMulai,
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.w300),
                            ),
                            Text(
                              'Selesai',
                              style: TextStyle(fontSize: 11),
                            ),
                            Text(
                              pemira.waktuSelesai,
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
                                      image: (pemira.ormawa.logo == null)
                                          ? AssetImage('assets/photo.png')
                                          : NetworkImage(pemira.ormawa.logo),
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
                                image: (pemira.foto == null)
                                    ? AssetImage('assets/photo.png')
                                    : NetworkImage(pemira.foto),
                                fit: BoxFit.cover,
                              )),
                            ),
                            Text(pemira.nama,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500)),
                            Text(pemira.deskripsi,
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
