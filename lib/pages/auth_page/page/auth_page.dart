import 'package:clooth/pages/auth_page/page/widgets/auth_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 92.h),
            child: SizedBox(
                width: 91.w,
                child: Image.asset('assets/images/logo_clooth.png')),
          ),
          Padding(
            padding: EdgeInsets.only(top: 102.h),
              child: const Text('Авторизаия', style: TextStyle(fontFamily: 'Montserrat', fontSize: 25, fontWeight: FontWeight.bold),)),
          Padding(
            padding: EdgeInsets.only(top: 35.h),
            child: AuthFormWidget(),
          ),
        ],
      ),
    );
  }
}
