import 'package:flutter/material.dart';

class TaskProvider extends ChangeNotifier {
  TaskProvider() {}
  int doneTotalCount = 0;
  int futureCount = 0;
  int activeCount = 0;

  int consecutiveCount = 0;
  int doneDailyCount = 0;
  int challengesCount = 0;

  void done() {
    doneTotalCount += 1;
  }

  void addFuture() {
    futureCount += 1;
  }

  void deleatFuture() {
    futureCount -= 1;
  }

  void addActive() {
    activeCount += 1;
  }

  void deleatActive() {
    activeCount -= 1;
  }

  void addConsecutive() {
    consecutiveCount += 1;
  }

  void deleatConsecutive() {
    consecutiveCount = 0;
  }

  void addDoneDaily() {
    doneDailyCount += 1;
  }

  void deleatDoneDaily() {
    doneDailyCount = 0;
  }

  void addChallenges() {
    challengesCount += 1;
  }

  void deleatChallenges() {
    challengesCount = 0;
  }
}
