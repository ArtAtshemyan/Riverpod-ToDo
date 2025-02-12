import 'package:flutter/material.dart';

import '/config/theme/app_theme.dart';
import '../screens/home_screen.dart';

class AppManager extends StatelessWidget {
  const AppManager({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      theme: AppTheme.light,
      home: HomeScreen(),
    );
  }
}
