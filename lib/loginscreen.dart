import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample/homepage.dart';

import 'main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _clicked = false;
  double _opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.red.shade400,
      body: Center(
        child: Container(
          height: 350.h,
          width: 320.w,
          decoration: BoxDecoration(
            border: Border.all(width: 3.w,color: Colors.black),
              borderRadius: BorderRadius.circular(15),
              color: Colors.white),
          child: Column(
            children: [
              SizedBox(height: 45.h),
              GradientText(
                'LOGIN',
                style: const TextStyle(
                  fontSize: 40,fontWeight: FontWeight.bold
                ),
                gradient: LinearGradient(colors: [
                  Colors.green.shade400,
                  Colors.yellow.shade900,
                ]),
              ),
              SizedBox(height: 35.h),
              SizedBox(
                height: 40.h,
                width: 280.w,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "User name",
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black))),
                ),
              ),
              SizedBox(height: 35.h),
              SizedBox(
                height: 40.h,
                width: 280.w,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Password",
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.black))),
                ),
              ),
             Spacer(),
              InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),)),
                child: Container(
                  height: 60.h,width: 60.h,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue),
                  child: const Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
              SizedBox(height: 15.h),
            ],
          ),
        ),
      ),
    ));
  }
}