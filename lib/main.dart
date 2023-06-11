import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intagram_ui/signup.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
            const SizedBox(
              height: 50,
            ),
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
            Padding(
              padding: const EdgeInsets.only(
                top: 100,
              ),
              child: Text.rich(
                TextSpan(
                  text: 'Don’t have an account? ',
                  style: const TextStyle(
                    fontFamily: 'Poppins-Regular',
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpScreen(),
                            ),
                          );
                        },
                      text: 'Sign Up.',
                      style: const TextStyle(
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
