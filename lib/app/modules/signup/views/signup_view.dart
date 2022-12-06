import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:open_close_loop_recycling/app/modules/login/views/login.dart';
import 'package:open_close_loop_recycling/app/utils/colors.dart';
import 'package:open_close_loop_recycling/app/widgets/generic_button.dart';
import '../../../widgets/generic_text_field.dart';
import '../controllers/signup_controller.dart';
import 'widgets/login_to_your_account.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Login - to - your - account - container
            HeadingText(title: "Sign up", subTitle: "Create an account"),
            // Text - form - fields
            Form(
              child: Column(
                children: [
                  GenericTextField(),
                  SizedBox(height: 10.h),
                  GenericTextField(),
                  SizedBox(height: 10.h),
                  GenericTextField(),
                  SizedBox(height: 10.h),
                  GenericButton(onTap: () {}, text: "Sign up"),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Text(
                        "Already have a account?  ",
                        style: TextStyle(),
                      ),
                      GestureDetector(
                          onTap: () {
                            Get.to(LoginView());
                          },
                          child: Text("Login Now")),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
