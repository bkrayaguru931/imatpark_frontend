import 'package:flutter_bloc/flutter_bloc.dart';
import 'personal_details_event.dart';
import 'personal_details_state.dart';

class PersonalDetailsBloc
    extends Bloc<PersonalDetailsEvent, PersonalDetailsState> {
  PersonalDetailsBloc()
      : super(const PersonalDetailsUpdatedState(
          isMaleSelected: false,
          isFemaleSelected: false,
          height: 159.0,
          weight: 51.0,
          age: 23.0,
        )) {
    on<GenderSelectedEvent>((event, emit) {
      if (state is PersonalDetailsUpdatedState) {
        final currentState = state as PersonalDetailsUpdatedState;
        emit(PersonalDetailsUpdatedState(
          isMaleSelected: event.isMale,
          isFemaleSelected: !event.isMale,
          height: currentState.height,
          weight: currentState.weight,
          age: currentState.age,
        ));
      }
    });

    on<HeightChangedEvent>((event, emit) {
      if (state is PersonalDetailsUpdatedState) {
        final currentState = state as PersonalDetailsUpdatedState;
        emit(PersonalDetailsUpdatedState(
          isMaleSelected: currentState.isMaleSelected,
          isFemaleSelected: currentState.isFemaleSelected,
          height: event.height,
          weight: currentState.weight,
          age: currentState.age,
        ));
      }
    });

    on<WeightChangedEvent>((event, emit) {
      if (state is PersonalDetailsUpdatedState) {
        final currentState = state as PersonalDetailsUpdatedState;
        emit(PersonalDetailsUpdatedState(
          isMaleSelected: currentState.isMaleSelected,
          isFemaleSelected: currentState.isFemaleSelected,
          height: currentState.height,
          weight: event.weight,
          age: currentState.age,
        ));
      }
    });

    on<AgeChangedEvent>((event, emit) {
      if (state is PersonalDetailsUpdatedState) {
        final currentState = state as PersonalDetailsUpdatedState;
        emit(PersonalDetailsUpdatedState(
          isMaleSelected: currentState.isMaleSelected,
          isFemaleSelected: currentState.isFemaleSelected,
          height: currentState.height,
          weight: currentState.weight,
          age: event.age,
        ));
      }
    });
  }
}
