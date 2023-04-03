import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micqui/app/providers.dart';
import 'package:micqui/core/extensions/firebase.dart';
import 'package:micqui/core/themes/theme.dart';
import 'package:micqui/features/auth/presentation/signin/view/signin_screen.dart';
import 'package:micqui/features/create_profile/bloc/create_profile_bloc.dart';
import 'package:micqui/features/home/home.dart';

import '../features/auth/bloc/auth_bloc.dart';
import '../features/create_profile/create_profile_screen.dart';

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
                      builder: (context) => const SignInScreen(),
                    ),
                    (route) => false),
            orElse: () {},
          );
        },
        child: BlocListener<CreateProfileBloc, CreateProfileState>(
          listener: (context,state){
            state.maybeWhen(
              profileNotCreated: (){
                navigatorKey.currentState?.pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const CreateProfile(),
                    ),
                        (route) => false);
              },
                success: (){
                  navigatorKey.currentState?.pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => const Home(),
                      ),
                          (route) => false);
                },
                orElse: (){
            });
          },
          listenWhen: (oldState, newState){
            return oldState.maybeMap(
                error: (_){
                  return newState.maybeMap(
                    profileNotCreated: (_){
                      return false;
                    },
                      orElse: (){
                    return true;
                  });
                },
                orElse: (){return true;});
          },
          child: MaterialApp(
            navigatorKey: navigatorKey,
            theme: AppTheme.themeData,
            debugShowCheckedModeBanner: false,
            home: const SignInScreen(),
          ),
        ),
      ),
    );
  }
}
