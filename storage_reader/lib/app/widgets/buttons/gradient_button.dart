import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:storage_reader/app/constants/colors.dart';
import 'package:storage_reader/app/widgets/button.dart';

class GradientButton extends StatelessWidget {
  const GradientButton(
      {super.key,
      this.onPressed,
      this.withArrow = true,
      this.title = "Button"});
  final Function()? onPressed;
  final String title;
  final bool withArrow;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.0, 1.0],
          colors: [
            Color(0xBD233A8E),
            AppColors.mainblue,
          ],
        ),
      ),
      child: CustomElevatedButton(
        buttonColor: Colors.transparent,
        shadowColor: Colors.transparent,
        textColor: AppColors.background,
        borderRadius: 90,
        onPressed: onPressed,
        verticalPadding: 12,
        horizantalPadding: 28,
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                  height: 1,
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(width: withArrow ? 8 : 0),
            withArrow
                ? const Icon(
                    CupertinoIcons.arrow_right,
                    color: Colors.white,
                  )
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
