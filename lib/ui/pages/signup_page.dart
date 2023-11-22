import 'package:flutter/material.dart';
import 'package:klin/shared/theme.dart';
import 'package:klin/ui/widgets/custom_button.dart';
import 'package:klin/ui/widgets/custom_textformfield.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
                        "Sign Up",
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
              CustomTextFormField(
                hintText: "Email",
                iconUrl: "assets/icons/icon-mail.png",
              ),
              CustomTextFormField(
                hintText: "Password",
                iconUrl: "assets/icons/icon-lock.png",
              ),
              SizedBox(height: 100),
              CustomButton(
                title: "Sign Up",
                color: kWhiteColor,
                onTap: () {
                  Navigator.pushNamed(context, '/verification');
                },
                titleColor: kYellowColor,
                width: 200,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
