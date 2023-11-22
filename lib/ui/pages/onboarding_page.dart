import 'package:flutter/material.dart';
import 'package:klin/shared/theme.dart';
import 'package:klin/ui/widgets/custom_button.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 80,
              ),
              Text(
                "Welcome to our apps",
                style: boldTextStyle.copyWith(
                  color: kPinkColor,
                  fontSize: 28,
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                height: 146,
                width: 164,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/logo.png',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Text(
                "feel the experience and get the best results",
                style: boldTextStyle.copyWith(
                  color: kPinkColor,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 45,
              ),
              CustomButton(
                title: "Login",
                color: kWhiteColor,
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                titleColor: kPink2Color,
                width: 200,
              ),
              SizedBox(height: 20),
              CustomButton(
                title: "Sign up",
                color: kWhiteColor,
                onTap: () {
                  Navigator.pushNamed(context, '/signup');
                },
                titleColor: kYellowColor,
                width: 200,
              ),
              SizedBox(height: 60),
            ],
          ),
        ),
      )),
    );
  }
}
