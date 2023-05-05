import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui/features/home/home.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/strings.dart';
import '../../../core/themes/theme.dart';
import '../../../core/widgets/app_elevated_button.dart';

class QuizRoundsEnd extends StatelessWidget {
  const QuizRoundsEnd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future(() => false),
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              children: [
                const Spacer(),
                const FaIcon(
                  FontAwesomeIcons.solidSquareCheck,
                  size: 128,
                  color: AppColors.mediumGreen,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  AppText.sessionEnded,
                  style: AppTheme.themeData.textTheme.headlineMedium!
                      .copyWith(color: AppColors.text, fontSize: 26),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  AppText.thankYou,
                  style: AppTheme.themeData.textTheme.titleMedium!
                      .copyWith(fontSize: 24),
                ),
                const Spacer(),
                const SizedBox(
                  height: 40,
                ),
                AppElevatedButton(
                  text: AppText.ok,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 500),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const Home(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          var tween = Tween(
                                  begin: const Offset(0.0, 0.0),
                                  end: Offset.zero)
                              .chain(CurveTween(curve: Curves.ease));

                          return SlideTransition(
                            position: animation.drive(tween),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 43,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
