import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/signin.dart';
import 'package:firstapp/components/email.dart';
import 'package:firstapp/components/apple.dart';
import 'package:firstapp/components/google.dart';
import 'package:firstapp/components/facebook.dart';
import 'package:firstapp/components/skip.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 70),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFE8F7FA),
                    ),
                    child: Transform.scale(
                      scale: 0.8,
                      child: Image.asset(
                        'assets/logo.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                  FractionallySizedBox(
                    widthFactor: 1.25,
                    child: EmailButton(
                      onTap: emailLogin,
                    ),
                  ),
                  const SizedBox(height: 20),
                  FractionallySizedBox(
                    widthFactor: 1.25,
                    child: AppleButton(
                      onTap: appleLogin,
                    ),
                  ),
                  const SizedBox(height: 20),
                  FractionallySizedBox(
                    widthFactor: 1.25,
                    child: GoogleButton(
                      onTap: googleLogin,
                    ),
                  ),
                  const SizedBox(height: 20),
                  FractionallySizedBox(
                    widthFactor: 1.25,
                    child: FacebookButton(
                      onTap: facebookLogin,
                    ),
                  ),
                  const SizedBox(height: 19),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: signUp,
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 70),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'By clicking "Continue with Email/Apple/Google/Facebook"\nabove, you agree to 7krave\'s',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                        TextSpan(
                          text: ' Terms & Conditions ',
                          style: TextStyle(
                            color: Color(0xFFD4CB90),
                            fontSize: 13,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = terms,
                        ),
                        TextSpan(
                          text: 'and',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                        TextSpan(
                          text: ' Privacy\nPolicy',
                          style: TextStyle(
                            color: Color(0xFFD4CB90),
                            fontSize: 13,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = policy,
                        ),
                        TextSpan(
                          text: '.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 8,
              right: 0,
              child: SkipButton(
                onTap: skip,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void emailLogin() {
    // Add your sign-in logic here
  }

  void googleLogin() {
    // Add your sign-in logic here
  }

  void appleLogin() {
    // Add your sign-in logic here
  }

  void facebookLogin() {
    // Add your sign-in logic here
  }

  void signUp() {
    // Add your sign-up logic here
  }

  void terms() {
    // Add your terms logic here
  }

  void policy() {
    // Add your policy logic here
  }

  void skip() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => signin()),
    );
  }
}
