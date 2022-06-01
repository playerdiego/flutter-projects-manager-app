import 'package:flutter/cupertino.dart';
import 'package:project_manager/screens/auth/recover_screen.dart';
import 'package:project_manager/screens/screens.dart';

class AppRouter {

  static String initialRoute = 'launch';

  static final List<_Route> routes = [
    _Route(name: 'Launch', path: 'launch', screen: const LaunchScreen()),
    _Route(name: 'Login', path: 'login', screen: const LoginScreen()),
    _Route(name: 'Register', path: 'register', screen: const RegisterScreen()),
    _Route(name: 'Recover', path: 'recover', screen: const RecoverScreen()),

    _Route(name: 'Dashboard', path: 'dashboard', screen: const DashboardScreen(), isDashboard: true),
    _Route(name: 'Proyectos', path: 'projects', screen: const RecoverScreen(), isDashboard: true),
    _Route(name: 'Balance de pagos', path: 'balance', screen: const RecoverScreen(), isDashboard: true),

    _Route(name: 'Mi cuenta', path: 'account', screen: const RecoverScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {

    Map<String, Widget Function(BuildContext)> tempRoutes = {};

    // ignore: avoid_function_literals_in_foreach_calls
    routes.forEach((e) => tempRoutes[e.path] = (_) => e.screen );
    
    return tempRoutes;

  }

}

class _Route {

  _Route({
    required this.name,
    required this.path,
    required this.screen,
    this.icon,
    this.isDashboard = false
  });

  final String name;
  final String path;
  final Widget screen;
  final IconData? icon;
  final bool isDashboard; 

}