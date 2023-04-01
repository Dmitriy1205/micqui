import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui/features/auth/presentation/signin/widgets/apple_signin_button/bloc/apple_signin_bloc.dart';

import '../../../../../../core/constants/colors.dart';
import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/services/service_locator.dart';
import '../../../../../../core/themes/theme.dart';

class AppleSignInButton extends StatelessWidget {
  AppleSignInButton({Key? key}) : super(key: key);
  final AppleSigninBloc _bloc = sl<AppleSigninBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppleSigninBloc, AppleSigninState>(
      bloc: _bloc,
      builder: (context, state) {
        return Material(
          child: InkWell(
            onTap: () {
              state.maybeMap(
                  loading: (_) => null,
                  initial: (_) =>
                      _bloc.add(const AppleSigninEvent.signInWithApple()),
                  orElse: () =>
                      _bloc.add(const AppleSigninEvent.signInWithApple()));
            },
            child: Ink(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: AppColors.text),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 46,
                child: state.maybeMap(
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
                        FontAwesomeIcons.apple,
                        size: 30,
                        color: AppColors.background,
                      ),
                      Text(
                        AppText.signInApple,
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
