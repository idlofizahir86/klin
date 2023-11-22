import 'package:flutter/material.dart';
import 'package:klin/shared/theme.dart';
import 'package:klin/ui/widgets/custom_button.dart';
import 'package:klin/ui/widgets/custom_textformfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 24,
                          width: 24,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/icons/icon-back.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Login",
                        style: boldTextStyle.copyWith(
                          color: kPinkColor,
                          fontSize: 28,
                        ),
                      ),
                    ),
                  ],
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
                height: 12,
              ),
              Text(
                "Klin & Klin",
                style: boldTextStyle.copyWith(
                  color: kBlackColor,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "feel the experience and get the best results",
                style: boldTextStyle.copyWith(
                  color: kPinkColor,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              CustomTextFormField(
                hintText: "Email",
                iconUrl: "assets/icons/icon-mail.png",
              ),
              CustomTextFormField(
                hintText: "Password",
                iconUrl: "assets/icons/icon-lock.png",
              ),
              SizedBox(height: 40),
              CustomButton(
                title: "Login",
                color: kWhiteColor,
                onTap: () {
                  Navigator.pushNamed(context, '/main');
                },
                titleColor: kPink2Color,
                width: 200,
              ),
              SizedBox(height: 15),
              Container(
                height: 20,
                width: 180,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Forgot Password?",
                    style: boldTextStyle.copyWith(
                      color: kPink2Color,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60),
            ],
          ),
        ),
      )),
    );
  }
}
