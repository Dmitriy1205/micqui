import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui/core/constants/colors.dart';
import 'package:micqui/core/constants/strings.dart';
import 'package:micqui/core/themes/theme.dart';
import 'package:micqui/features/auth/presentation/signin/widgets/google_signin_button/bloc/google_signin_bloc.dart';

import '../../../../../../core/services/service_locator.dart';

class GoogleSignInButton extends StatelessWidget {
  GoogleSignInButton({Key? key}) : super(key: key);
  final GoogleSigninBloc _bloc = sl<GoogleSigninBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GoogleSigninBloc, GoogleSigninState>(
      bloc: _bloc,
      listener: (context, state) {
        state.maybeMap(
            error: (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: AppColors.accent,
                  duration: const Duration(seconds: 5),
                  content: Text(
                    e.error,
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
            orElse: () {});
      },
      builder: (context, state) {
        return Material(
          child: InkWell(
            onTap: () {
              state.maybeMap(
                  loading: (_) => null,
                  initial: (_) =>
                      _bloc.add(const GoogleSigninEvent.signInWithGoogle()),
                  orElse: () =>
                      _bloc.add(const GoogleSigninEvent.signInWithGoogle()));
            },
            child: Ink(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: AppColors.text),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 46,
                child: state.maybeMap(
                  initial: (_) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.google,
                        color: AppColors.background,
                      ),
                      Text(
                        AppText.signInGoogle,
                        style: AppTheme.themeData.textTheme.labelMedium,
                      ),
                      const SizedBox(),
                    ],
                  ),
                  loading: (_) => const Center(
                    child: SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          color: AppColors.background,
                        )),
                  ),
                  orElse: () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.google,
                        color: AppColors.background,
                      ),
                      Text(
                        AppText.signInGoogle,
                        style: AppTheme.themeData.textTheme.labelMedium,
                      ),
                      const SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
