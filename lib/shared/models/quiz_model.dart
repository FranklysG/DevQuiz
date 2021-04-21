import 'dart:convert';

import 'package:DevQuiz/shared/models/question_model.dart';

enum Level { easy, medium, hard, expert }

extension LevelStringExt on String {
  Level get parse => {
        "Fácil": Level.easy,
        "Medio": Level.medium,
        "Dicfícil": Level.hard,
        "Perito": Level.expert
      }[this]!;
}

extension LevelExt on Level {
  String get parse => {
        Level.easy: "Fácil",
        Level.medium: "Medio",
        Level.hard: "Dicfícil",
        Level.expert: "Perito"
      }[this]!;
}

class QuizModel {
  final String title;
  final String imagen;
  final Level level;
  final int questionAnswered;
  final List<QuestionModel> questions;

  QuizModel({
    required this.title,
    required this.imagen,
    required this.level,
    this.questionAnswered = 0,
    required this.questions,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'imagen': imagen,
      'level': level.parse,
      'questionAnswered': questionAnswered,
      'questions': questions.map((x) => x.toMap()).toList(),
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
      title: map['title'],
      imagen: map['imagen'],
      level: map['level'].toString().parse,
      questionAnswered: map['questionAnswered'],
      questions: List<QuestionModel>.from(
          map['questions']?.map((x) => QuestionModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) =>
      QuizModel.fromMap(json.decode(source));
}
