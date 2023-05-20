import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui/core/constants/colors.dart';
import 'package:micqui/core/widgets/app_elevated_button.dart';
import 'package:micqui/core/widgets/loading_indicator.dart';
import 'package:micqui/features/auth/bloc/auth_bloc.dart';
import 'package:micqui/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:micqui/features/profile/presentation/edit_profile/edit_profile.dart';

import '../../core/constants/strings.dart';
import '../../core/themes/theme.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  // final ProfileBloc _bloc = sl<ProfileBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.text,
      body: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          state.maybeMap(
            error: (e) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: AppColors.accent,
                duration: const Duration(seconds: 5),
                content: Text(
                  e.error,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            orElse: () {},
          );
        },
        builder: (context, state) {
          if (state.user == null) {
            return Container();
          }
          return state.maybeMap(
            loading: (_) => const LoadingIndicator(),
            orElse: () => ClipRRect(
              child: Stack(
                children: [
                  Positioned(
                    top: 127,
                    left: 0,
                    child: Transform.rotate(
                      alignment: Alignment.topLeft,
                      angle: pi / 5,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.lightGrey,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: 97,
                        height: 158,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0, right: 8),
                      child: Transform.rotate(
                        alignment: Alignment.topRight,
                        angle: pi / -5,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.lightGrey,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          width: 130,
                          height: 244,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 36),
                    child: Column(
                      children: [
                        SizedBox(height: 64,),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 138,
                            width: 138,
                            child: state.user?.avatar == null ||
                                    state.user!.avatar!.isEmpty
                                ? CircleAvatar(
                                    radius: 70,
                                    backgroundColor:
                                        state.user?.property?['color'],
                                    child: Center(
                                      child: Text(
                                        state.user?.property?['symbol'] ?? '',
                                        style: const TextStyle(fontSize: 50),
                                      ),
                                    ),
                                  )
                                : ClipRRect(
                                    borderRadius: BorderRadius.circular(70),
                                    child: Image.network(
                                      state.user!.avatar!,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            state.user?.nickName ?? '',
                            style: AppTheme.themeData.textTheme.headlineMedium,
                          ),
                        ),
                        Text(
                          state.user?.email ?? AppText.emptyEmail,
                          style: const TextStyle(
                              color: AppColors.background,
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                        // Spacer(),
                        // Container(
                        //   width: MediaQuery.of(context).size.width,
                        //   decoration: BoxDecoration(
                        //     color: AppColors.background,
                        //     borderRadius: BorderRadius.circular(10),
                        //   ),
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(22),
                        //     child: Column(
                        //       crossAxisAlignment: CrossAxisAlignment.start,
                        //       children: [
                        //         const Text(
                        //           AppText.additionalInfo,
                        //           style: TextStyle(
                        //               color: AppColors.text,
                        //               fontWeight: FontWeight.w600,
                        //               fontSize: 15),
                        //         ),
                        //         const Text(
                        //           AppText.surveyOrganizers,
                        //           style: TextStyle(
                        //               color: AppColors.text,
                        //               fontWeight: FontWeight.w400,
                        //               fontSize: 12),
                        //         ),
                        //         const SizedBox(
                        //           height: 16,
                        //         ),
                        //         const Text(
                        //           AppText.companyName,
                        //           style: TextStyle(
                        //               color: AppColors.text,
                        //               fontWeight: FontWeight.w500,
                        //               fontSize: 12),
                        //         ),
                        //         Text(
                        //           state.user?.companyName ?? '--',
                        //           style: const TextStyle(
                        //               color: AppColors.text,
                        //               fontWeight: FontWeight.w400,
                        //               fontSize: 12),
                        //         ),
                        //         const SizedBox(
                        //           height: 16,
                        //         ),
                        //         const Text(
                        //           AppText.role,
                        //           style: TextStyle(
                        //               color: AppColors.text,
                        //               fontWeight: FontWeight.w500,
                        //               fontSize: 12),
                        //         ),
                        //         Text(
                        //           state.user?.role ?? '--',
                        //           style: const TextStyle(
                        //               color: AppColors.text,
                        //               fontWeight: FontWeight.w400,
                        //               fontSize: 12),
                        //         ),
                        //         state.user?.firstName == null ||
                        //                 state.user!.firstName!.isEmpty
                        //             ? const SizedBox()
                        //             : Column(
                        //                 crossAxisAlignment:
                        //                     CrossAxisAlignment.start,
                        //                 children: [
                        //                   const SizedBox(
                        //                     height: 16,
                        //                   ),
                        //                   const Text(
                        //                     AppText.fullName,
                        //                     style: TextStyle(
                        //                         color: AppColors.text,
                        //                         fontWeight: FontWeight.w500,
                        //                         fontSize: 12),
                        //                   ),
                        //                   Text(
                        //                     state.user!.fullName!,
                        //                     style: const TextStyle(
                        //                         color: AppColors.text,
                        //                         fontWeight: FontWeight.w400,
                        //                         fontSize: 12),
                        //                   ),
                        //                 ],
                        //               ),
                        //         const SizedBox(
                        //           height: 16,
                        //         ),
                        //         const Text(
                        //           AppText.country,
                        //           style: TextStyle(
                        //               color: AppColors.text,
                        //               fontWeight: FontWeight.w500,
                        //               fontSize: 12),
                        //         ),
                        //         Text(
                        //           state.user!.country!,
                        //           style: const TextStyle(
                        //               color: AppColors.text,
                        //               fontWeight: FontWeight.w400,
                        //               fontSize: 12),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        const Spacer(),
                        AppElevatedButton(
                            text: AppText.logout.toUpperCase(),
                            onPressed: () {
                              context
                                  .read<AuthBloc>()
                                  .add(const AuthEvent.logout());
                            }),
                      ],
                    ),
                  ),
                  SafeArea(
                    child: Container(
                      margin: EdgeInsets.only(right: 25),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          splashColor: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => EditProfile(),
                              ),
                            );
                          },
                          child: const SizedBox(
                            width: 40,
                            height: 40,
                            child: Center(
                              child: FaIcon(
                                FontAwesomeIcons.userPen,
                                color: AppColors.background,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Container(
                      margin: EdgeInsets.only(left: 25),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Ink(
                          width: 40,
                          height: 40,
                          child: const Center(
                            child: FaIcon(
                              FontAwesomeIcons.arrowLeft,
                              color: AppColors.background,
                            ),
                          ),
                        ),
                      ),
                    ),
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
