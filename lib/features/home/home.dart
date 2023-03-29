import 'package:flutter/material.dart';
import 'package:micqui/core/constants/colors.dart';
import 'package:micqui/features/profile/profile.dart';

import '../../core/themes/theme.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 87,
            color: AppColors.text,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hello, Mitchell',
                    style: AppTheme.themeData.textTheme.headlineMedium,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  const Profile(),
                        ),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColors.accent,
                      child: Center(
                        child: Text('V',style: TextStyle(fontSize: 25),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Center(
            child: Text(
              'Home'.toUpperCase(),
              style: AppTheme.themeData.textTheme.headlineMedium!
                  .copyWith(color: AppColors.text),
            ),
          ),
          const Spacer(),
          const SizedBox(),
        ],
      ),
    );
  }
}
