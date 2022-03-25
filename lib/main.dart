import 'package:evoting_flutter/ui/pages/pages.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'E-Voting';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
            appBarTheme: AppBarTheme(
              textTheme: TextTheme(
                headline6: TextStyle(
                  color: Colors.white,
                  fontFamily: 'FontPoppins',
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            textTheme: TextTheme(
              headline6: TextStyle(
                  fontFamily: 'FontPoppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Colors.black),
            ),
            primarySwatch: Colors.blue,
            fontFamily: 'FontPoppins'),
        home: OnBoardingPage(),
      );
}
