import 'package:clooth/pages/registration_page/page/widgets/registration_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

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
              child: const Text('Регистрация', style: TextStyle(fontFamily: 'Montserrat', fontSize: 25, fontWeight: FontWeight.bold),)),
          Padding(
            padding: EdgeInsets.only(top: 35.h),
            child: RegistrationFormWidget(),
          ),
        ],
      ),
    );
  }
}
