import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_auth_ui/utils/icons.dart';
import 'package:responsive_auth_ui/views/widgets/custom_text_field.dart';
import 'package:responsive_auth_ui/views/widgets/login_with_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.95,
            padding: EdgeInsets.symmetric(
              vertical: 10.h,
              horizontal: 26.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Lottie.asset(
                  MyIcons.loginLottie,
                ),
                customTextField(
                    labelText: "UserName", textInputType: TextInputType.text),
                customTextField(
                    labelText: "Password", textInputType: TextInputType.number),
                TextButton(
                  style: ButtonStyle(
                      elevation: const MaterialStatePropertyAll(10.0),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r))),
                      minimumSize: MaterialStatePropertyAll(Size(320.w, 50.h)),
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.green)),
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5.h,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                      child: Text(
                        "Login with",
                        style: TextStyle(fontSize: 16.sp),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5.h,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                loginWithWidgets()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
