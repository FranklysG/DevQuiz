import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/widget/chart/chart_widget.dart';
import 'package:flutter/material.dart';

class ScoreCardWidget extends StatelessWidget {
  ScoreCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: 136,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: ChartWidget(),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vamos Começar",
                      style: AppTextStyles.heading,
                    ),
                    Text(
                      "Complete os desafios e avance",
                      style: AppTextStyles.body,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
