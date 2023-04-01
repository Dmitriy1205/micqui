import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui/core/extensions/validation.dart';
import 'package:micqui/features/auth/presentation/forgot_password/bloc/forgot_password_bloc.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/strings.dart';
import '../../../../core/services/service_locator.dart';
import '../../../../core/themes/theme.dart';
import '../../../../core/widgets/app_elevated_button.dart';
import '../../../../core/widgets/loading_indicator.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final ForgotPasswordBloc _bloc = sl<ForgotPasswordBloc>();
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
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
              success: (_) {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: AppColors.green,
                    duration: Duration(seconds: 5),
                    content: Text(
                      'Check your Email',
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
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 45,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    child: Ink(
                        width: 40,
                        height: 40,
                        child: Center(
                          child: const FaIcon(
                      FontAwesomeIcons.arrowLeft,
                      size: 25,
                    ),
                        ),),
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
                      text: AppText.reset.toUpperCase(),
                      onPressed: () {
                        if (!_formKey.currentState!.validate()) {
                          return;
                        }
                        _formKey.currentState!.save();
                        _bloc.add(ForgotPasswordEvent.resetPassword(
                            email: _emailController.text));
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
