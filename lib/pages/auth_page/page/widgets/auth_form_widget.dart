import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../registration_page/page/registration_page.dart';

class AuthFormWidget extends StatelessWidget {
  const AuthFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Email',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.w400)),
              Padding(
                padding: EdgeInsets.only(top: 14.11.h),
                child: SizedBox(
                  width: 382.w,
                  height: 50.h,
                  child: TextFormField(
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 11.h, left: 14.5.w),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.r),
                        ),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(20, 20, 20, 1),
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.r),
                        ),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(20, 20, 20, 1),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.h),
                child: const Text('Пароль',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        fontWeight: FontWeight.w400)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 14.11.h),
                child: SizedBox(
                  width: 382.w,
                  height: 50.h,
                  child: TextFormField(
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 18,
                    ),
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 7.h, left: 14.5.w),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.r),
                        ),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(20, 20, 20, 1),
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.r),
                        ),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(20, 20, 20, 1),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 103.89.h),
          child: Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                fixedSize: Size(334.w, 67.h),
                side: const BorderSide(
                  width: 6.0,
                  color: Colors.white,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(47.r)),
              ),
              onPressed: () {},
              child: const Text('Вход',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 18,
                  )),
            ),
          ),
        ),
        Center(
          child: TextButton(
            onPressed: () {
              Get.off(RegistrationPage());
            },
            child: const Text('Зарегистрироваться',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 18,
                    color: Color.fromRGBO(165, 165, 165, 1))),
          ),
        )
      ],
    );
  }
}
