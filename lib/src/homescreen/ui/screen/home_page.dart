import 'package:demystifying_flutter_bloc/src/homescreen/ui/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeBloc()..add(HomeInitialised()),
      child: const HomePageUI(),
    );
  }
}

class HomePageUI extends StatelessWidget {
  const HomePageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (_, state) {
        return switch (state) {
          HomeInitial() => const Text('Initial'),
          HomeLoading() => const Text('Loading'),
          HomeSuccess() => const Text('Success'),
        };
      },
    );
  }
}
