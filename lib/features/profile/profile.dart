import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:micqui/core/constants/colors.dart';
import 'package:micqui/core/widgets/app_elevated_button.dart';
import 'package:micqui/features/auth/presentation/signin/view/signin_screen.dart';
import 'package:micqui/features/profile/presentation/edit_profile/edit_profile.dart';

import '../../core/constants/strings.dart';
import '../../core/themes/theme.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.text,
      body: ClipRRect(
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
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 36),
              child: Column(
                children: [
                  Container(
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
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
                        InkWell(
                          splashColor: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => EditProfile()));
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
                      ],
                    ),
                  ),
                  const CircleAvatar(
                    radius: 70,
                    backgroundColor: AppColors.accent,
                    child: Center(
                      child: Text(
                        'V',
                        style: TextStyle(fontSize: 50),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'Mitchell',
                      style: AppTheme.themeData.textTheme.headlineMedium,
                    ),
                  ),
                  const Text(
                    'vladim.hovskiy@gmail.com',
                    style: TextStyle(
                        color: AppColors.background,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  const SizedBox(
                    height: 83,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: AppColors.background,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            AppText.additionalInfo,
                            style: TextStyle(
                                color: AppColors.text,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                          Text(
                            AppText.surveyOrganizers,
                            style: TextStyle(
                                color: AppColors.text,
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            AppText.country,
                            style: TextStyle(
                                color: AppColors.text,
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                          Text(
                            'Ukraine',
                            style: TextStyle(
                                color: AppColors.text,
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            AppText.dateOfBirth,
                            style: TextStyle(
                                color: AppColors.text,
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                          Text(
                            '11.04.1993',
                            style: TextStyle(
                                color: AppColors.text,
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  AppElevatedButton(
                      text: AppText.logout.toUpperCase(),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => SignInScreen()));
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
