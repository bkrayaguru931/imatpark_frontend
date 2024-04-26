import 'package:flutter/material.dart';
import 'dhi.dart';

class MyComponent extends StatefulWidget {
  const MyComponent({Key? key}) : super(key: key);

  @override
  _MyComponentState createState() => _MyComponentState();
}

class _MyComponentState extends State<MyComponent> {
  bool isMaleSelected = false;
  bool isFemaleSelected = false;

  double _height = 159;
  double _weight = 51;
  double _age = 23;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg4.png'),
            fit: BoxFit.contain,
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 375),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Shape Up Your Fitness Journey',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 26,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isMaleSelected = true;
                              isFemaleSelected = false;
                            });
                          },
                          child: OptionBox(
                            text: 'Male',
                            isSelected: isMaleSelected,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isFemaleSelected = true;
                              isMaleSelected = false;
                            });
                          },
                          child: OptionBox(
                            text: 'Female',
                            isSelected: isFemaleSelected,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Height',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                    ),
                  ),
                  Slider(
                    value: _height,
                    min: 100,
                    max: 250,
                    onChanged: (value) {
                      setState(() {
                        _height = value.roundToDouble();
                      });
                    },
                  ),
                  Text(
                    '$_height cm',
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Weight',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                    ),
                  ),
                  Slider(
                    value: _weight,
                    min: 30,
                    max: 150,
                    onChanged: (value) {
                      setState(() {
                        _weight = value.roundToDouble();
                      });
                    },
                  ),
                  Text(
                    '$_weight kg',
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Age',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                    ),
                  ),
                  Slider(
                    value: _age,
                    min: 1,
                    max: 100,
                    onChanged: (value) {
                      setState(() {
                        _age = value.roundToDouble();
                      });
                    },
                  ),
                  Text(
                    '$_age years',
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Dhi()),
          );
        },
        backgroundColor: Colors.white,
        child: const Icon(Icons.arrow_forward),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class OptionBox extends StatelessWidget {
  final String text;
  final bool isSelected;

  const OptionBox({
    Key? key,
    required this.text,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected
            ? const Color.fromARGB(255, 227, 227, 227)
            : Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color.fromARGB(255, 227, 227, 227),
          width: 1,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: MyComponent(),
  ));
}
