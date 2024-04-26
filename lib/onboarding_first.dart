import 'package:flutter/material.dart';

class OnboardingFirstPage extends StatelessWidget {
  const OnboardingFirstPage({Key? key}) : super(key: key);

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
                Image.asset(
                  'assets/on1.png',
                  width: 300,
                  height: 300,
                ),
                const SizedBox(height: 20),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'I\'m at Park',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900,
                        fontSize: 26,
                      ),
                    ),
                    Text(
                      'Breath, gym and more',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Color.fromRGBO(255, 140, 121, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 20),
                    height: 50,
                    width: 270,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Name',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    height: 40,
                    width: 189,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/second');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(80, 163, 121, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
