import 'package:flutter/material.dart';
import 'login.dart';
import 'searchscreen.dart';
import 'signup.dart';
import 'homescreen.dart';
import 'notification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/homescreen': (context) => const HomeScreen(),
        '/searchscreen': (context) => SearchScreen(),
        '/notification': (context) => const NotifyBell(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 400,
            ),
            const Image(
              image: AssetImage('assets/logo.png'),
              height: 150,
              width: 300,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff3797EF),
                ),
                alignment: Alignment.center,
                height: 45,
                width: 307,
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Color(0XffFFFFFF),
                    fontFamily: 'Poppins-Black',
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 8,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: const Text.rich(
                TextSpan(
                  text: 'Don’t have an account? ',
                  style: TextStyle(
                    fontFamily: 'Poppins-Regular',
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign Up.',
                      style: TextStyle(
                        fontFamily: 'Poppins-Black',
                        fontSize: 12,
                        color: Color(0xff262626),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
