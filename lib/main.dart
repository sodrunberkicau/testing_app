import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:testing_app/models/favorites_model.dart';
import 'package:testing_app/screen/favorites_screen.dart';
import 'package:testing_app/screen/home_screen.dart';

void main() {
  runApp(const TestingApp());
}

// GoRouter digunakan untuk mengatur navigasi di flutter
final _router = GoRouter(
  debugLogDiagnostics: kDebugMode,
  routes: [
    GoRoute(
      path: HomeScreen.routeName,
      builder: (context, state) {
        return const HomeScreen();
      },
      routes: [
        GoRoute(
          path: FavoritesScreen.routeName,
          builder: (context, state) {
            return const FavoritesScreen();
          },
        ),
      ],
    ),
  ],
);

class TestingApp extends StatelessWidget {
  const TestingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FavoritesModel>(
      create: (context) => FavoritesModel(),
      child: MaterialApp.router(
        title: 'Testing Sample',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          ),
          useMaterial3: true,
        ),
        routerConfig: _router,
      ),
    );
  }
}
