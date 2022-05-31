import 'package:flutter/material.dart';
import 'package:project_manager/screens/auth/recover_screen.dart';
import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'launch',
      routes: {
        'launch': (_) => const LaunchScreen(),
        'login': (_) => const LoginScreen(),
        'register': (_) => const RegisterScreen(),
        'recover': (_) => const RecoverScreen(),

        'dashboard': (_) => const DashboardScreen(),
      },
    );
  }
}