// import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_repository.dart';
import 'package:DevQuiz/home/home_state.dart';
// import 'package:DevQuiz/shared/models/awnser_model.dart';
// import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void getFetchData() async {
    state = HomeState.loading;
    user = await repository.getUser();
    quizzes = await repository.getQuizzes();
    state = HomeState.success;
  }
}
