import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/fb_logo_login.svg'),
                    const SizedBox(height: 70),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFecf0f8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        hintText: 'Mobile Number or Email Address',
                        hintStyle: const TextStyle(
                          fontSize: 16,
                          color: Color(0xFF898F9C),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFecf0f8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                          fontSize: 16,
                          color: Color(0xFF898F9C),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1877F2),
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () => {},
                      child: const Text(
                        'Forgotten Password ?',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF898F9C),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.blue, width: 2),
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {},
                child: const Text(
                  'Create Account',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset('assets/images/meta-logo.png'),
                  const SizedBox(width: 8),
                  const Text(
                    'Meta',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
