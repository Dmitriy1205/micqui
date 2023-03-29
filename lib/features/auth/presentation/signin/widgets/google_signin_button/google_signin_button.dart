import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui/core/constants/colors.dart';
import 'package:micqui/core/constants/strings.dart';
import 'package:micqui/core/themes/theme.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //TODO: google sign in
      },
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
    );
  }
}
