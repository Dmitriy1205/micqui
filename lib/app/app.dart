import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micqui/app/providers.dart';
import 'package:micqui/core/themes/theme.dart';
import 'package:micqui/features/auth/presentation/signin/view/signin_screen.dart';
import 'package:micqui/features/home/home.dart';

import '../features/auth/bloc/auth_bloc.dart';

class App extends StatelessWidget {
  App({super.key});

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Providers(
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            unauthenticated: (_) =>
                navigatorKey.currentState?.pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    ),
                    (route) => false),
            authenticated: (_) => navigatorKey.currentState?.pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) =>  Home(),
                ),
                (route) => false),
            orElse: () {},
          );
        },
        child: MaterialApp(
          navigatorKey: navigatorKey,
          theme: AppTheme.themeData,
          debugShowCheckedModeBanner: false,
          home: SignInScreen(),
        ),
      ),
    );
  }
}
