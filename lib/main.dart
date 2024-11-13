import 'package:employee_communication_app/documents_screen.dart';
import 'package:employee_communication_app/help_support_screen.dart';
import 'package:employee_communication_app/my_schedule_screen.dart';
import 'package:employee_communication_app/notifications_screen.dart';
import 'package:employee_communication_app/profile_screen.dart';
import 'package:employee_communication_app/settings_screen.dart';
import 'package:employee_communication_app/signin_screen.dart';
import 'package:employee_communication_app/signup_screen.dart';
import 'package:employee_communication_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:employee_communication_app/home_screen.dart';
import 'WelcomeScreen.dart';
import 'firebase_options.dart'; // Import the Firebase configuration

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensures that Flutter binds correctly
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // Load platform-specific Firebase options
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Employee Communication App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/', // Initial screen (Splash Screen)
      routes: {
        '/': (context) => const SplashScreen(), // SplashScreen
        '/welcome': (context) => const WelcomeScreen(), // WelcomeScreen
        '/signin': (context) => const SignInScreen(), // SignInScreen
        '/signup': (context) => const SignUpScreen(), // SignUpScreen
        '/home': (context) => const HomeScreen(), // HomeScreen
        '/notifications': (context) => const NotificationsScreen(),
        '/schedule': (context) => const MyScheduleScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/documents': (context) => const DocumentsScreen(),
        '/settings': (context) => const SettingsScreen(),
        '/help': (context) => const HelpSupportScreen(),
      },
    );
  }
}
