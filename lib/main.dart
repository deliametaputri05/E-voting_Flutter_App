import 'package:evoting_flutter/cubit/cubit.dart';
import 'package:evoting_flutter/cubit/pemira_cubit.dart';
import 'package:evoting_flutter/ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'cubit/ormawa_cubit.dart';
import 'cubit/user_cubit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'E-Voting';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PemiraCubit()),
        BlocProvider(create: (_) => OrmawaCubit()),
        BlocProvider(create: (_) => UserCubit()),
        BlocProvider(create: (_) => KandidatCubit()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            backgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              elevation: 0,
              backgroundColor: Colors.transparent,
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
      ),
    );
  }
}
