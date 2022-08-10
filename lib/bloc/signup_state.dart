part of 'signup_bloc.dart';

@immutable
class SignupState {
  final BaseStateDef state;

  const SignupState({this.state = BaseStateDef.init});

  SignupState copyWith({BaseStateDef? state}) {
    return SignupState(state: state ?? this.state);
  }
}
