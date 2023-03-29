import 'package:flutter/material.dart';
import 'package:micqui/core/extensions/validation.dart';
import 'package:micqui/core/widgets/app_elevated_button.dart';

import '../../../../../core/constants/strings.dart';
import '../../../../../core/themes/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../home/home.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset:false,
      body: Padding(
        padding:  EdgeInsets.only(left: 24, right: 24, top: MediaQuery.of(context).size.height/11),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppText.createAccount,
              style: AppTheme.themeData.textTheme.titleLarge,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              AppText.youAreOnRightWay,
              style: AppTheme.themeData.textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 57,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
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
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    style: AppTheme.themeData.textTheme.labelSmall!
                        .copyWith(fontSize: 14),
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      hintText: AppText.password,
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 12, bottom: 10, top: 12),
                        child: FaIcon(
                          FontAwesomeIcons.lock,
                          size: 20,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ' Password cant be empty';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 29),
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        '< ${AppText.signIn}',
                        style: AppTheme.themeData.textTheme.displayMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            AppElevatedButton(
                text: AppText.signUp.toUpperCase(), onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  const Home(),
                ),
              );
            }),
            const SizedBox(
              height: 47,
            ),
          ],
        ),
      ),
    );
  }
}
