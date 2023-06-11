import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static const id = "SignupScreen";
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
            const SizedBox(
              height: 200,
            ),
            const Center(
              child: Image(
                image: AssetImage('assets/logo.png'),
                height: 150,
                width: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(
                  fontFamily: 'Poppins-Regular',
                  fontSize: 14,
                ),
                autofocus: true,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: 'Phone number, email or username',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Poppins-Regular',
                    fontSize: 14,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                        color: Colors.grey[200]!), // Set the border color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                        color: Colors.grey[200]!), // Set the border color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                        color: Colors.grey[200]!), // Set the border color
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 2,
              ),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                style: const TextStyle(
                  fontFamily: 'Poppins-Regular',
                  fontSize: 14,
                ),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: 'Please Enter Your Password',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Poppins-Regular',
                    fontSize: 14,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                        color: Colors.grey[200]!), // Set the border color
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                        color: Colors.grey[200]!), // Set the border color
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                        color: Colors.grey[200]!), // Set the border color
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff3797EF),
                    ),
                    alignment: Alignment.center,
                    height: 45,
                    width: 370,
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Color(0XffFFFFFF),
                        fontFamily: 'Poppins-Black',
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Center(
                  child: Text.rich(
                    TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(
                        fontFamily: 'Poppins-Regular',
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                      children: [
                        TextSpan(
                          text: 'Sign In',
                          style: TextStyle(
                            fontFamily: 'Poppins-Black',
                            fontSize: 14,
                            color: Color(0xff3797EF),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 20),
              child: Row(
                children: const [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      "OR",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Poppins-Black",
                          color: Colors.grey),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.facebook,
                    color: Color(0xff3797EF),
                  ),
                  Text(
                    "Log in with Facebook",
                    style: TextStyle(
                        color: Color(
                          0xff3797EF,
                        ),
                        fontFamily: "Poppins-Black",
                        fontSize: 14),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
