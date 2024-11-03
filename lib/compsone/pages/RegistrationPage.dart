import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/compsone/widgets/textInput_widget.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final purpleColor = const Color(0xff6688ff);
  final filledColor = const Color.fromARGB(255, 230, 235, 255);
  final darkTextColor = const Color(0xff1f1a30);
  final borderColor = const Color.fromARGB(14, 9, 5, 9);
  final appBarColor = const Color.fromARGB(255, 0, 24, 207);

  //creating a widget using function
  Widget getTextField({required String hint}) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        filled: true,
        fillColor: const Color.fromARGB(255, 243, 245, 255),
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w400,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 18.h,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ralf.Ng',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 18.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(247, 2, 0, 36),
        toolbarHeight: 100.h,
        actions: [
          Image.asset(
            'images/windows.png',
            width: 50.0,
          ),
          SizedBox(width: 10.w),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
            vertical: 10.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25.h),
              Text(
                'Sign Up for Ralf.NG',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.h),
              Wrap(
                children: [
                  Text(
                    'Already have an Account? ',
                    style: TextStyle(
                      fontSize: 13.sp,
                    ),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                      color: purpleColor,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(height: 40.h),
              const TextInputWidget(hint: 'Username'),
              SizedBox(height: 10.h),
              const TextInputWidget(hint: 'Email'),
              SizedBox(height: 10.h),
              const TextInputWidget(hint: 'Password'),
              SizedBox(height: 10.h),
              getTextField(hint: 'Confirm Password'),
              SizedBox(height: 40.h),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      textStyle: WidgetStateProperty.all(
                        TextStyle(
                          fontSize: 14.sp,
                        ),
                      ),
                      backgroundColor: WidgetStateProperty.all(purpleColor),
                      foregroundColor: WidgetStateProperty.all(Colors.white),
                      padding: WidgetStatePropertyAll(
                          EdgeInsets.symmetric(vertical: 18.h))),
                  child: const Text(
                    'Create Account',
                  ),
                ),
              ),
              SizedBox(height: 20.w),
              Row(
                children: [
                  const Expanded(child: Divider()),
                  SizedBox(width: 16.w),
                  Text(
                    'Or sign up via',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 16.w),
                  const Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 20.w),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: ButtonStyle(
                    side: WidgetStatePropertyAll(
                      BorderSide(color: borderColor),
                    ),
                    backgroundColor: const WidgetStatePropertyAll(
                      Colors.transparent,
                    ),
                    padding: WidgetStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 14.h),
                    ),
                  ),
                  onPressed: () => {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: const AssetImage('images/google.png'),
                        radius: 10.r,
                      ),
                      SizedBox(width: 16.w),
                      Text(
                        'Google',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Wrap(
                children: [
                  Text(
                    'By Signing up to Ralf.Ng you agree to our',
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  ),
                  Text(
                    'Terms & Conditions',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: purpleColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
