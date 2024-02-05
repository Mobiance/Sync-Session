import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sync_session/resources/auth_methods.dart';
import 'package:sync_session/screens/home_screen.dart';
import 'package:sync_session/utils/colors.dart';
import 'screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SyncSession',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
      },
      home: StreamBuilder(
      stream: AuthMethods().authChanges,
      builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                child: CircularProgressIndicator(),
                );
            }
            if (snapshot.hasData) {
                return const HomeScreen();
            }
            return const LoginScreen();
          }) 
    );
  }
}
