import 'package:flutter/material.dart';
import 'onboarding_third.dart';

class OnboardingSecondPage extends StatefulWidget {
  const OnboardingSecondPage({Key? key}) : super(key: key);

  @override
  _OnboardingSecondPageState createState() => _OnboardingSecondPageState();
}

class _OnboardingSecondPageState extends State<OnboardingSecondPage> {
  String selectedOption = '';
  bool isButtonEnabled = false;

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
                  'assets/on2.png',
                  width: 300,
                  height: 300,
                ),
                const SizedBox(height: 20),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Always hydrated and ',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      'Would likely to',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w900,
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    height: 160,
                    width: 170,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                        buildTextButton('Be Fit'),
                        buildTextButton('Just Breath'),
                        buildTextButton('Feel Mindful'),
                        buildTextButton('Why not all'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: SizedBox(
                    height: 40,
                    width: 189,
                    child: ElevatedButton(
                      onPressed: isButtonEnabled
                          ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const OnboardingThirdPage(),
                                ),
                              );
                            }
                          : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isButtonEnabled
                            ? const Color.fromRGBO(80, 163, 121, 1)
                            : Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: const Text(
                        'Let\'s Go',
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextButton(String option) {
    return selectedOption != option
        ? TextButton(
            onPressed: () {
              setState(() {
                selectedOption = option;
                isButtonEnabled = true;
              });
            },
            child: Text(
              option,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          )
        : SizedBox(
            height: 30,
            width: 100,
            child: SizedBox(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/$option');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(255, 140, 121, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: Text(
                  option,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
  }
}
