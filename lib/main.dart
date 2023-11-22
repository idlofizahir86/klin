import 'package:flutter/material.dart';
import 'package:klin/ui/pages/verification_page.dart';
import 'ui/pages/splash_page.dart';
import 'ui/pages/login_page.dart';
import 'ui/pages/main_page.dart';
import 'ui/pages/onboarding_page.dart';
import 'ui/pages/signup_page.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/main': (context) => const MainPage(),
        '/onboarding': (context) => const OnBoardingPage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/verification': (context) => const VerificationPage(),
      },
    );
  }
}
