import 'package:flutter/material.dart';
import 'package:micqui/core/constants/colors.dart';
import 'package:micqui/core/themes/theme.dart';

class AppElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const AppElevatedButton({
    required this.text,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: AppColors.text,
            blurRadius: 5,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(text,style: AppTheme.themeData.textTheme.labelLarge,),
            ),
          ],
        ),
      ),
    );
  }
}
