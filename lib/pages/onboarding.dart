import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 120),
          Center(
            child: Image.asset('lib/images/pan.png',
                width: 300, height: 300, fit: BoxFit.cover),
          ),
          const SizedBox(height: 20),
          Text('Découvrez votre gout!',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54)),
          ),
          const SizedBox(height: 70),
          Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  color: Color(0xFFff734C),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text('Commencer',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
