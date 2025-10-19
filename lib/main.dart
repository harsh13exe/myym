import 'package:flutter/material.dart';
import 'package:mvvm_architecture/view/login.dart';

import 'package:mvvm_architecture/viewmodel/authviewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AuthViewModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            textStyle: const TextStyle(fontSize: 16),
          ),
        ),
      ),
      // Use a Consumer widget to listen to changes in AuthViewModel.
      // This will automatically rebuild the UI and switch between LoginView
      // and HomeView when the authentication state changes.
      home: Consumer<AuthViewModel>(
        builder: (context, authViewModel, child) {
          return LoginView();
        },
      ),
    );
  }
}
