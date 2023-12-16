import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../models/Questions.dart';
import '../screens/score/score_screen.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;
  Animation get animation => this._animation;

  late PageController _pageController;
  PageController get pageController => this._pageController;

  // массив вопросов
  List<Question> _questions = sample_data
      .map(
        (question) => Question(
            id: question['id'],
            question: question['question'],
            options: question['options'],
            answer: question['answer_index']),
      )
      .toList();
  List<Question> get questions => this._questions;

  // верный ли ответ
  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  // верный ответ
  int _correctAns = 0;
  int get correctAns => this._correctAns;

  // выбранный ответ
  late int _selectedAns;
  int get selectedAns => this._selectedAns;

  // номер вопроса
  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  // Счетчик верных ответов
  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;

  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });

    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  // проверка ответа
  void checkAns(Question question, int selectedIndex) {
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;

    _animationController.stop();
    update();

    // переход на следущий вопрос
    Future.delayed(Duration(seconds: 3), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    // сравниваем номер вопроса и количество вопросов
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);

      _animationController.reset();
      // когда таймер закончится переходим к следущему вопросу
      _animationController.forward().whenComplete(nextQuestion);
    } else {
      Get.to(ScoreScreen());
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}
