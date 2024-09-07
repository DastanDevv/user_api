import 'package:equatable/equatable.dart';
import '../models/user.dart';

abstract class UserState extends Equatable {
  @override
  List<Object> get props => [];
}

class UserInitialState extends UserState {}

class UserLoadingState extends UserState {}

class UserLoadedState extends UserState {
  final List<User> users;

  UserLoadedState({required this.users});

  @override
  List<Object> get props => [users];
}

class UserErrorState extends UserState {
  final String message;

  UserErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
