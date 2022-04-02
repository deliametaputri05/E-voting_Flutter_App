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
                                              // Get.to(
                                              //   JobDetailsPage(
                                              //     apply: Apply(
                                              //         job: e,
                                              //         user: (BlocProvider.of<
                                              //                         UserCubit>(
                                              //                     context)
                                              //                 .state as UserLoaded)
                                              //             .user),
                                              //     onBackButtonPressed: () {
                                              //       Get.back();
                                              //     },
                                              //   ),
                                              // );
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

Widget backgroundHeader() {
  return Container(
    height: 100,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
    ),
  );
}

Widget pemiraWidget() {
  return Positioned(
    child: Container(
      // color: Colors.white,
      child: WillPopScope(
        onWillPop: () {
          return null;
        },
        child: ListView(
          children: [
            Column(
              children: [
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
                  height: 300,
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
                                              // Get.to(
                                              //   JobDetailsPage(
                                              //     apply: Apply(
                                              //         job: e,
                                              //         user: (BlocProvider.of<
                                              //                         UserCubit>(
                                              //                     context)
                                              //                 .state as UserLoaded)
                                              //             .user),
                                              //     onBackButtonPressed: () {
                                              //       Get.back();
                                              //     },
                                              //   ),
                                              // );
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
    ),
  );
}
