import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micqui/core/extensions/validation.dart';
import 'package:micqui/core/widgets/app_elevated_button.dart';
import 'package:micqui/core/widgets/loading_indicator.dart';
import 'package:micqui/features/auth/presentation/signup/bloc/signup_bloc.dart';

import '../../../../../core/constants/strings.dart';
import '../../../../../core/themes/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/services/service_locator.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  final SignupBloc _bloc = sl<SignupBloc>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocConsumer<SignupBloc, SignupState>(
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
          return state.maybeMap(
            loading: (_) => const LoadingIndicator(),
            orElse: () => Padding(
              padding: EdgeInsets.only(
                  left: 24,
                  right: 24,
                  top: MediaQuery.of(context).size.height / 11),
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
                          controller: emailController,
                          style: AppTheme.themeData.textTheme.labelSmall!
                              .copyWith(fontSize: 14),
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
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
                          controller: passwordController,
                          obscureText: true,
                          style: AppTheme.themeData.textTheme.labelSmall!
                              .copyWith(fontSize: 14),
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            hintText: AppText.password,
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(
                                  left: 12, bottom: 10, top: 12),
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
                      text: AppText.signUp.toUpperCase(),
                      onPressed: () {
                        if (!_formKey.currentState!.validate()) {
                          return;
                        }
                        _formKey.currentState!.save();
                        _bloc.add(SignupEvent.signUpWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text));
                      }),
                  const SizedBox(
                    height: 47,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
