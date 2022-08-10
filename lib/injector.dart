import 'package:custom_textfield/bloc/signup_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt injector = GetIt.asNewInstance();

Future<void> initInjector() async {
  injector.registerFactory<SignupBloc>(() => SignupBloc());
}
