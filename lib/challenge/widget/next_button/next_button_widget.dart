import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:DevQuiz/core/core.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color borderColor;
  final Color fontColor;
  final VoidCallback onTap;

  const NextButtonWidget({
    Key? key,
    required this.label,
    required this.backgroundColor,
    required this.borderColor,
    required this.fontColor,
    required this.onTap,
  }) : super(key: key);

  NextButtonWidget.white({
    required String label,
    required VoidCallback onTap,
  })   : this.label = label,
        this.onTap = onTap,
        this.backgroundColor = AppColors.white,
        this.borderColor = AppColors.border,
        this.fontColor = AppColors.lightGrey;

  NextButtonWidget.purble({
    required String label,
    required VoidCallback onTap,
  })   : this.label = label,
        this.onTap = onTap,
        this.backgroundColor = AppColors.purple,
        this.borderColor = AppColors.border,
        this.fontColor = AppColors.white;

  NextButtonWidget.green({
    required String label,
    required VoidCallback onTap,
  })   : this.label = label,
        this.onTap = onTap,
        this.backgroundColor = AppColors.darkGreen,
        this.borderColor = AppColors.darkGreen,
        this.fontColor = AppColors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          side: MaterialStateProperty.all(BorderSide(color: borderColor)),
        ),
        onPressed: onTap,
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
