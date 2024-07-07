import 'package:equatable/equatable.dart';

abstract class PersonalDetailsEvent extends Equatable {
  const PersonalDetailsEvent();

  @override
  List<Object> get props => [];
}

class GenderSelectedEvent extends PersonalDetailsEvent {
  final bool isMale;

  const GenderSelectedEvent(this.isMale);

  @override
  List<Object> get props => [isMale];
}

class HeightChangedEvent extends PersonalDetailsEvent {
  final double height;

  const HeightChangedEvent(this.height);

  @override
  List<Object> get props => [height];
}

class WeightChangedEvent extends PersonalDetailsEvent {
  final double weight;

  const WeightChangedEvent(this.weight);

  @override
  List<Object> get props => [weight];
}

class AgeChangedEvent extends PersonalDetailsEvent {
  final double age;

  const AgeChangedEvent(this.age);

  @override
  List<Object> get props => [age];
}
