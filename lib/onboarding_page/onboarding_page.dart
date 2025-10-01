import 'package:chat/config/custom_scaffold.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/icons/icon_app.png', height: 100),
          Text(
            'Connect friends easily & quickly',
            style: TextStyle(fontSize: 64, fontWeight: FontWeight.w700),
          ),
          Text(
            'Our chat app is the perfect way to stay connected with friends.',
            style: TextStyle(fontSize: 16),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: Image.asset('assets/icons/fb.png'),
              ),
              const SizedBox(width: 20), // separación entre íconos
              GestureDetector(
                onTap: () {},
                child: Image.asset('assets/icons/gl.png'),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {},
                child: Image.asset('assets/icons/apple.png'),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(child: Divider(color: Colors.black)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text('OR', style: TextStyle(fontSize: 14)),
              ),
              Expanded(child: Divider(color: Colors.black)),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 232, 229, 229),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () {},
              child: Text('Sign up with mail'),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: RichText(
              text: TextSpan(
                text: 'Existing account? ',
                style: TextStyle(
                  color: const Color.fromARGB(255, 102, 102, 102),
                  fontSize: 14,
                ),
                children: [
                  TextSpan(
                    text: 'Log in',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
