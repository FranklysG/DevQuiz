import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      child: Stack(
        children: [
          Center(
            child: Container(
              width: 80,
              height: 80,
              child: CircularProgressIndicator(
                strokeWidth: 10,
                value: 0.75,
                backgroundColor: AppColors.chartSecondary,
                valueColor:
                    AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
              ),
            ),
          ),
          Center(
            child: Text(
              "75%",
              style: AppTextStyles.heading,
            ),
          )
        ],
      ),
    );
  }
}
