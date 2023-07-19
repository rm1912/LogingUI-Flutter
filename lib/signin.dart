import 'package:firstapp/components/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
class signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<signin> {
  bool _isPasswordVisible = false;
  bool _rememberMe = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  void _toggleRememberMe(bool value) {
    setState(() {
      _rememberMe = value;
    });
  }

  void SignIn() {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFFF6E5),
                    ),
                    child: Transform.scale(
                      scale: 0.7,
                      child: Image.asset(
                        'assets/logo.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFEBF4F5)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFEBF4F5)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        fillColor: Color(0xFFEBF4F5),
                        filled: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 19),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFEBF4F5)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFEBF4F5)),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        fillColor: Color(0xFFEBF4F5),
                        filled: true,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          color: Colors.grey,
                          onPressed: _togglePasswordVisibility,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Checkbox(
                        value: _rememberMe,
                        onChanged: (bool? value) {
                          _toggleRememberMe(value ?? false);
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        side: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                       // Add this SizedBox with a width of 10
                      Text(
                        'Remember Me',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(width: 80),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontSize: 19,
                            color: Color(0xFF9E0018),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),
                  FractionallySizedBox(
                    widthFactor: 1.25,
                    child: SignInButton(
                      onTap: SignIn,
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

                  const SizedBox(height: 180),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'By clicking "Sign In" above, you agree to 7krave\'s',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                        TextSpan(
                          text: ' Terms &\nConditions ',
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
                          text: ' Privacy Policy',
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
              top: 15,
              left: 10,
              child: CircleAvatar(
                backgroundColor: Color(0xFFDAF4FA),
                radius: 25,
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            Positioned(
              top: 30,
              right: 270,
              child: Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
