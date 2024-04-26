
import 'package:flutter/material.dart';
import 'personal_details.dart';

class OnboardingThirdPage extends StatelessWidget {
  const OnboardingThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 375),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    'assets/on3.png',
                    width: 300,
                    height: 300,
                  ),
                ),
                const SizedBox(height: 20),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'A little push  ',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'Everyday',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900,
                        fontSize: 26,
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 50),
                      child: Text(
                        'Create an account using',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyComponent()),
                        );
                      },
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 234, 237, 236),
                          child: Image.asset(
                            'assets/facebook.png',
                            width: 28,
                            height: 28,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyComponent()),
                        );
                      },
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: CircleAvatar(
                          backgroundColor:
                              const Color.fromARGB(255, 234, 237, 236),
                          child: Image.asset(
                            'assets/google.png',
                            width: 28,
                            height: 28,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'By Signing up you agree to our Conditions & Privacy Policy',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
