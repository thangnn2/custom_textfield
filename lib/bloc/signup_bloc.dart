import 'package:bloc/bloc.dart';
import 'package:custom_textfield/constant/base_state.dart';
import 'package:meta/meta.dart';

import '../dummy_data/dummy_data.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(const SignupState()) {
    on<Phone>(_typePhone);
  }

  void _typePhone(Phone event, Emitter<SignupState> emit) {
    final bool check = dummyData.contains(event.phoneNumber);
    if (check) {
      emit(state.copyWith(state: BaseStateDef.success));
    } else {
      emit(state.copyWith(state: BaseStateDef.failed));
    }
  }
}
