part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}

class Phone extends SignupEvent {
  final String phoneNumber;
  Phone({this.phoneNumber = ''});
}
