import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:users_api/bloc/user_event.dart';
import 'package:users_api/home/user_page.dart';
import 'package:users_api/repository/user_repository.dart';

import '../bloc/user_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random User BLoC App',
      home: BlocProvider(
        create: (context) =>
            UserBloc(userRepository: UserRepository())..add(LoadUsersEvent()),
        child: const UserPage(),
      ),
    );
  }
}
