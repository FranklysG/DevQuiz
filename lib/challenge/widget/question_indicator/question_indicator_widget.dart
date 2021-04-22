import 'package:flutter/material.dart';

import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/widget/progress_indicator/progress_indicator_line_widget.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentPage;
  final int size;

  const QuestionIndicatorWidget({
    Key? key,
    required this.currentPage,
    required this.size,
  }) : super(key: key);

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
              BackButton(),
              Text(
                "Question $currentPage",
                style: AppTextStyles.body,
              ),
              Text(
                "de $size",
                style: AppTextStyles.body,
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          ProgressIndicatorLineWidget(
            value: (currentPage / size),
          ),
        ],
      ),
    );
  }
}
