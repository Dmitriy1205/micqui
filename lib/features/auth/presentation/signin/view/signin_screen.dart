import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micqui/core/constants/colors.dart';
import 'package:micqui/core/extensions/validation.dart';
import 'package:micqui/core/widgets/app_elevated_button.dart';
import 'package:micqui/features/auth/presentation/signin/bloc/signin_bloc.dart';
import 'package:micqui/features/auth/presentation/signin/widgets/apple_signin_button/apple_signin_button.dart';
import 'package:micqui/features/auth/presentation/signin/widgets/google_signin_button/google_signin_button.dart';
import 'package:micqui/features/auth/presentation/signup/signup_screen.dart';

import '../../../../../core/constants/strings.dart';
import '../../../../../core/services/service_locator.dart';
import '../../../../../core/themes/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/widgets/loading_indicator.dart';
import '../../forgot_password/forgot_password.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final SigninBloc _bloc = sl<SigninBloc>();
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SigninBloc, SigninState>(
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
            orElse: () => SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 24,
                      right: 24,
                      top: MediaQuery.of(context).size.height / 11),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppText.joinQuestionaire,
                        style: AppTheme.themeData.textTheme.titleLarge,
                      ),
                      const SizedBox(
                        height: 85,
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
                              controller: _passwordController,
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
                        padding: const EdgeInsets.only(top: 10),
                        child: SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ForgotPassword(),
                                    ),
                                  );
                                },
                                child: Text(
                                  AppText.forgotPassword,
                                  style:
                                      AppTheme.themeData.textTheme.titleMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Flexible(
                        child: SizedBox(
                          height: 77,
                        ),
                      ),
                      Row(
                        children: [
                          const Flexible(
                            child: Divider(
                              color: AppColors.text,
                              height: 3,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              AppText.or,
                              style: AppTheme.themeData.textTheme.labelSmall,
                            ),
                          ),
                          const Flexible(
                            child: Divider(
                              color: AppColors.text,
                              height: 3,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      GoogleSignInButton(),
                      const SizedBox(
                        height: 21,
                      ),
                      AppleSignInButton(),
                      Padding(
                        padding: const EdgeInsets.only(top: 22),
                        child: SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUpScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  '${AppText.signUp} >',
                                  style: AppTheme
                                      .themeData.textTheme.displayMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 3,
                      ),
                      AppElevatedButton(
                          text: AppText.signIn.toUpperCase(),
                          onPressed: () {
                            if (!_formKey.currentState!.validate()) {
                              return;
                            }
                            _formKey.currentState!.save();
                            _bloc.add(
                              SigninEvent.signInWithEmailAndPassword(
                                email: _emailController.text,
                                password: _passwordController.text,
                              ),
                            );
                          }),
                      const SizedBox(
                        height: 27,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
