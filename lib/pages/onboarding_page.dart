part of 'pages.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Ayo Vote !',
              body: 'Gunakan hak suaramu sebaik mungkin untuk memilih',
              image: Image.asset(
                'assets/vector_2.png',
                width: 220,
              ),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'E-Voting',
              body:
                  'E-voting adalah suatu sistem pemilihan dimana data dicatat, disimpan dan diproses dalam bentuk informasi digital.',
              image: Image.asset(
                'assets/vector_7.png',
                width: 220,
              ),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Pemilihan Raya',
              body:
                  'Pemilihan Raya Ketua Organisasi Mahasiswa Politeknik Negeri Indramayu yaitu MPM, BEM dan HMJ.',
              image: Image.asset(
                'assets/vector_4.png',
                width: 220,
              ),
              // footer: ButtonWidget(
              //   text: 'Masuk',
              //   onClicked: () => goToHome(context),
              // ),
              decoration: getPageDecoration(),
            ),
            // PageViewModel(
            //   title: '',
            //   body: '',
            //   footer: ButtonWidget(
            //     text: 'Masuk',
            //     onClicked: () => goToHome(context),
            //   ),
            //   image: Image.asset(
            //     'assets/evote3.png',
            //     width: 150,
            //   ),
            //   decoration: getPageDecoration(),
            // ),
          ],
          done: Text('Masuk'),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: Text('Skip'),
          onSkip: () => goToHome(context),
          next: Icon(Icons.arrow_forward),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          // globalBackgroundColor: Theme.of(context).primaryColor,
          skipFlex: 0,
          nextFlex: 0,
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LoginPage()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 250));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        //activeColor: Colors.orange,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
