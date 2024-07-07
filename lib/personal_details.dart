import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'personal_details_bloc.dart';
import 'personal_details_event.dart';
import 'personal_details_state.dart';
import 'dhi.dart';

class MyComponent extends StatelessWidget {
  const MyComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PersonalDetailsBloc(),
      child: const MyComponentView(),
    );
  }
}

class MyComponentView extends StatelessWidget {
  const MyComponentView({Key? key}) : super(key: key);

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
                  BlocBuilder<PersonalDetailsBloc, PersonalDetailsState>(
                    builder: (context, state) {
                      if (state is PersonalDetailsUpdatedState) {
                        return Row(
                          children: [
                            SizedBox(
                              width: 110,
                              height: 110,
                              child: GestureDetector(
                                onTap: () {
                                  context
                                      .read<PersonalDetailsBloc>()
                                      .add(const GenderSelectedEvent(true));
                                },
                                child: OptionBox(
                                  text: 'Male',
                                  isSelected: state.isMaleSelected,
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
                                  context
                                      .read<PersonalDetailsBloc>()
                                      .add(const GenderSelectedEvent(false));
                                },
                                child: OptionBox(
                                  text: 'Female',
                                  isSelected: state.isFemaleSelected,
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                      return Container();
                    },
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
                  BlocBuilder<PersonalDetailsBloc, PersonalDetailsState>(
                    builder: (context, state) {
                      if (state is PersonalDetailsUpdatedState) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Slider(
                              value: state.height,
                              min: 100,
                              max: 250,
                              onChanged: (value) {
                                context
                                    .read<PersonalDetailsBloc>()
                                    .add(HeightChangedEvent(value));
                              },
                            ),
                            Text(
                              '${state.height} cm',
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        );
                      }
                      return Container();
                    },
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
                  BlocBuilder<PersonalDetailsBloc, PersonalDetailsState>(
                    builder: (context, state) {
                      if (state is PersonalDetailsUpdatedState) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Slider(
                              value: state.weight,
                              min: 30,
                              max: 150,
                              onChanged: (value) {
                                context
                                    .read<PersonalDetailsBloc>()
                                    .add(WeightChangedEvent(value));
                              },
                            ),
                            Text(
                              '${state.weight} kg',
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        );
                      }
                      return Container();
                    },
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
                  BlocBuilder<PersonalDetailsBloc, PersonalDetailsState>(
                    builder: (context, state) {
                      if (state is PersonalDetailsUpdatedState) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Slider(
                              value: state.age,
                              min: 15,
                              max: 100,
                              onChanged: (value) {
                                context
                                    .read<PersonalDetailsBloc>()
                                    .add(AgeChangedEvent(value));
                              },
                            ),
                            Text(
                              '${state.age} years',
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        );
                      }
                      return Container();
                    },
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.purple),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Dhi()),
                        );
                      },
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OptionBox extends StatelessWidget {
  final String text;
  final bool isSelected;

  const OptionBox({required this.text, required this.isSelected, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.purple : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
