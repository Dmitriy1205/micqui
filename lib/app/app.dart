import 'package:flutter/material.dart';
import 'package:micqui/core/themes/theme.dart';
import 'package:micqui/features/auth/presentation/signin/view/signin_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.themeData,
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        body: SignInScreen(),
      ),
    );
  }
}
