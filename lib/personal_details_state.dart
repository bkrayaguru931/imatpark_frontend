import 'package:equatable/equatable.dart';

abstract class PersonalDetailsState extends Equatable {
  const PersonalDetailsState();

  @override
  List<Object> get props => [];
}

class InitialPersonalDetailsState extends PersonalDetailsState {}

class PersonalDetailsUpdatedState extends PersonalDetailsState {
  final bool isMaleSelected;
  final bool isFemaleSelected;
  final double height;
  final double weight;
  final double age;

  const PersonalDetailsUpdatedState({
    required this.isMaleSelected,
    required this.isFemaleSelected,
    required this.height,
    required this.weight,
    required this.age,
  });

  @override
  List<Object> get props => [
        isMaleSelected,
        isFemaleSelected,
        height,
        weight,
        age,
      ];
}
