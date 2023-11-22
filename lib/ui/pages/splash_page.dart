import 'dart:async';

import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/onboarding');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Center(
          child: FittedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 80,
                    vertical: 25,
                  ),
                  width: 318,
                  height: 312,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/logo.png',
                      ),
                    ),
                  ),
                ),
                Text(
                  "by Luthfi",
                  style: boldTextStyle.copyWith(
                    color: kBlackColor,
                    fontSize: 40,
                    letterSpacing: 5,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
