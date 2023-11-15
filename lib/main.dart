import 'package:bloc/bloc.dart';
import 'package:demystifying_flutter_bloc/src/common/bloc/bloc_monitor.dart';
import 'package:demystifying_flutter_bloc/src/homescreen/ui/screen/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  Bloc.observer = BlocMonitor();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demystifying flutter_bloc',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
