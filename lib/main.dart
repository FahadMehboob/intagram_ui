import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/logo.png'),
            ),
            Container(
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
            const Divider(
              thickness: 1,
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text.rich(
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
            ),
          ],
        ),
      ),
    );
  }
}
