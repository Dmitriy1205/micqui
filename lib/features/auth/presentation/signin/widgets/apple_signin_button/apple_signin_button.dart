import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../core/constants/colors.dart';
import '../../../../../../core/constants/strings.dart';
import '../../../../../../core/themes/theme.dart';

class AppleSignInButton extends StatelessWidget {
  const AppleSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: AppColors.text),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 46,
          child: Row(
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
    );
  }
}
