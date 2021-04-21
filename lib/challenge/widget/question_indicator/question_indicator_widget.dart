import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/widget/progress_indicator/progress_indicator_line_widget.dart';
import 'package:flutter/material.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Question 04",
                style: AppTextStyles.body,
              ),
              Text(
                "de 10",
                style: AppTextStyles.body,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          ProgressIndicatorLineWidget(value: 0.7),
        ],
      ),
    );
  }
}
