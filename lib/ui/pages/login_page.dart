part of 'pages.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/vector_8.png',
                width: 200,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Verifikasi Wajah',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 24),
              ButtonWidget(
                text: 'Sign Up',
                onClicked: () => goToOnBoarding(context),
              ),
              const SizedBox(height: 10),
              ButtonWidget(
                text: 'Sign In',
                onClicked: () {
                  context.read<PemiraCubit>().getPemira();
                  context.read<OrmawaCubit>().getOrmawa();
                  Get.to(MainPage());
                },
              ),
            ],
          ),
        ),
      );

  void goToOnBoarding(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => SignInPage()),
      );
  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => MainPage()),
      );
}
