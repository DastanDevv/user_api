import 'package:flutter_bloc/flutter_bloc.dart';
import '../repository/user_repository.dart';
import 'user_event.dart';
import 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;

  UserBloc({required this.userRepository}) : super(UserInitialState()) {
    on<LoadUsersEvent>((event, emit) async {
      emit(UserLoadingState());

      try {
        final users = await userRepository.fetchUsers();
        emit(UserLoadedState(users: users));
      } catch (e) {
        emit(UserErrorState(message: e.toString()));
      }
    });
  }
}
