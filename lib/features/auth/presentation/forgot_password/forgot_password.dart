import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui/core/extensions/validation.dart';

import '../../../../core/constants/strings.dart';
import '../../../../core/themes/theme.dart';
import '../../../../core/widgets/app_elevated_button.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 45,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              child: const SizedBox(
                  child: FaIcon(
                FontAwesomeIcons.arrowLeft,
                size: 25,
              )),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              AppText.forgotPassword,
              style: AppTheme.themeData.textTheme.titleLarge,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              AppText.enterYourEmailAddress,
              style: AppTheme.themeData.textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 57,
            ),
            Form(
              key: _formKey,
              child: TextFormField(
                controller: _emailController,
                style: AppTheme.themeData.textTheme.labelSmall!
                    .copyWith(fontSize: 14),
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  hintText: AppText.email,
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(
                      left: 12,
                      bottom: 10,
                      top: 13,
                    ),
                    child: FaIcon(
                      FontAwesomeIcons.solidEnvelope,
                      size: 20,
                    ),
                  ),
                ),
                validator: context.validateEmailAddress,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            AppElevatedButton(
                text: AppText.reset.toUpperCase(), onPressed: () {}),
            const SizedBox(
              height: 47,
            ),
          ],
        ),
      ),
    );
  }
}
