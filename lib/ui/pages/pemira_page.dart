part of 'pages.dart';

class PemiraPage extends StatefulWidget {
  @override
  _PemiraPageState createState() => _PemiraPageState();
}

class _PemiraPageState extends State<PemiraPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      child: WillPopScope(
        onWillPop: () {
          return null;
        },
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/logo_evote.png',
                          width: 50,
                          height: 50,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'E-Voting',
                        style: blackFontStyle1.copyWith(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                // SizedBox(height: 10),
                // Column(
                //   children: [
                //     Container(
                //       width: double.infinity,
                //       margin: EdgeInsets.symmetric(horizontal: 25),
                //       padding: EdgeInsets.symmetric(horizontal: 5),
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(8),
                //         border: Border.all(
                //           color: Colors.blue,
                //         ),
                //       ),
                //       child: TextFormField(
                //         decoration: InputDecoration(
                //             prefixIcon: Icon(
                //               Icons.search_outlined,
                //               color: Colors.blue,
                //             ),
                //             border: InputBorder.none,
                //             hintStyle: greyFontStyle.copyWith(fontSize: 14),
                //             hintText: 'Cari Pemilihan Raya..'),
                //       ),
                //     ),
                //   ],
                // ),
                SizedBox(height: 20),
                //// HEADER
                Container(
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  // height: 100,
                  width: double.infinity,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Organisasi Mahasiswa',
                            style: greyFontStyle.copyWith(fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: BlocBuilder<OrmawaCubit, OrmawaState>(
                    builder: (_, state) => (state is OrmawaLoaded)
                        ? SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: state.ormawa
                                  .map((e) => Padding(
                                        padding: EdgeInsets.only(
                                            left: (e == state.ormawa.first)
                                                ? 15
                                                : 0,
                                            right: 5),
                                        child: GestureDetector(
                                            onTap: () {}, child: OrmawaCard(e)),
                                      ))
                                  .toList(),
                            ))
                        : Center(child: loadingIndicator),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(left: 25),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Pemilihan Raya',
                        style: greyFontStyle.copyWith(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                //// LIST OF FOOD
                Container(
                  width: double.infinity,
                  child: BlocBuilder<PemiraCubit, PemiraState>(
                    builder: (_, state) => (state is PemiraLoaded)
                        ? SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Column(
                              children: state.pemira
                                  .map((e) => Padding(
                                        padding: EdgeInsets.only(
                                            top: (e == state.pemira.first)
                                                ? 0
                                                : 0,
                                            bottom: defaultMargin),
                                        child: GestureDetector(
                                            onTap: () {
                                              Get.to(
                                                PemiraDetailsPage(
                                                  kandidat: Kandidat(
                                                      pemira: e,
                                                      user: (BlocProvider.of<
                                                                      UserCubit>(
                                                                  context)
                                                              .state as UserLoaded)
                                                          .user),
                                                  onBackButtonPressed: () {
                                                    Get.back();
                                                  },
                                                ),
                                              );
                                            },
                                            child: PemiraCard(e)),
                                      ))
                                  .toList(),
                            ))
                        : Center(child: loadingIndicator),
                  ),
                ),

                SizedBox(
                  height: 80,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
