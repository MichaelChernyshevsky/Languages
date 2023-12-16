import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:project/service/hive_service.dart';
import 'package:project/service/notification.dart';

class UserProvider extends ChangeNotifier {
  UserProvider() {
    FirebaseAuth.instance.userChanges().listen((User? event) {
      user = event;
      userMail = user?.email;
      notifyListeners();
    });
  }
  User? user;
  String? userMail;
  bool get isLoggedIn => user != null;
  double totalWaste = 0;

  void setTotalWaste(double add) {
    totalWaste += add;
  }

  Future<bool> checkLogin() async {
    user = FirebaseAuth.instance.currentUser;
    userMail = user?.email;
    if (user == null || userMail == null) {
      return false;
    }

    try {
      await user?.reload();
    } catch (_) {
      user = null;
      userMail = null;
      notifyListeners();
      return false;
    }

    return true;
  }

// вход
  Future<User?> login(
    BuildContext context, {
    required String email,
    required String password,
  }) async {
    try {
      user = (await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password)).user;
      userMail = user?.email;
      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        await NotificationService.showSnackBar(
          context,
          'Неправильный email или пароль. Повторите попытку',
          true,
        );
        return null;
      } else {
        await NotificationService.showSnackBar(
          context,
          'Неизвестная ошибка! Попробуйте еще раз или обратитесь в поддержку.',
          true,
        );
        return null;
      }
    }
  }

// выход
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    await user?.delete();
    totalWaste = 0;
    await GetIt.I.get<HiveService>().wipeData();
  }

// регистрация
  Future<void> registration(
    BuildContext context, {
    required String password,
    required String email,
  }) async {
    try {
      user = (await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password)).user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        await NotificationService.showSnackBar(
          context,
          'Такой Email уже используется, повторите попытку с использованием другого Email',
          true,
        );
        return;
      } else {
        await NotificationService.showSnackBar(
          context,
          'Неизвестная ошибка! Попробуйте еще раз или обратитесь в поддержку.',
          true,
        );
      }
    }
  }
}
