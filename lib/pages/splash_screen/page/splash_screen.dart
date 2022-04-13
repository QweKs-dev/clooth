import 'package:clooth/pages/auth_page/page/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../bloc/splash_screen_bloc.dart';
import 'widget/splash_screen_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const routeName = '/splash';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  BlocProvider<SplashScreenBloc> _buildBody(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashScreenBloc(),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: BlocBuilder<SplashScreenBloc, SplashScreenState>(
            builder: (context, state) {
              if ((state is SplashScreenInitial) || (state is SplashScreenLoading)) {
                return const SplashScreenWidget();
              } else if (state is SplashScreenLoaded) {
                //Get.off(const AuthPage());
                return const AuthPage();
              } else{
                return const SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}
