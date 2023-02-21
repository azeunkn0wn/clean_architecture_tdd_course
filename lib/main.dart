import 'package:flutter/material.dart';

import 'features/number_trivia/presentation/pages/number_trivia_page.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  //? await di.sl.isReady<SharedPreferences>();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NumberTrivia',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.green,
            brightness: Brightness.light,
            accentColor: Colors.green.shade600),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.green,
            brightness: Brightness.dark,
            accentColor: Colors.green.shade600,
            backgroundColor: Colors.grey[900]),
      ),
      themeMode: ThemeMode.dark,
      home: NumberTriviaPage(),
    );
  }
}
