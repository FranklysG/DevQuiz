import 'package:DevQuiz/challenge/widget/awnser/awnser_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;
  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          AwnserWidget(
              isRight: true,
              isSelected: true,
              title:
                  "Questão aqui ta de buenas, Questão aqui ta de buenas,  Questão aqui ta de buenas"),
          AwnserWidget(
              isRight: false,
              isSelected: true,
              title: "Questão aqui ta de buenas"),
          AwnserWidget(title: "Questão aqui ta de buenas"),
          AwnserWidget(title: "Questão aqui ta de buenas"),
        ],
      ),
    );
  }
}
