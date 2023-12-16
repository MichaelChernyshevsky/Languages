import 'package:flutter/material.dart';
import 'package:flutter_app_3/constants.dart';
import 'package:flutter_app_3/controllers/question_controller.dart';
import 'package:flutter_app_3/models/Questions.dart';
import 'package:flutter_app_3/screens/quiz/components/card_option.dart';
import 'package:get/get.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
    required this.question,
  });

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: kBlackColor,
                ),
          ),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          ...List.generate(
            question.options.length,
            (index) => Option(
              index: index,
              text: question.options[index],
              press: () => _controller.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}
