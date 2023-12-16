import 'package:flutter/material.dart';
import 'package:project/models/app_routes.dart';
import 'package:project/provider/user.provider.dart';
import 'package:project/ui/widgets/focus_widget.dart';
import 'package:project/ui/widgets/start_elements/login_element.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  bool isHiddenPassword = false;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  // очищение
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  // скрыть/показать пароль
  void togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  Future<void> login() async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    final UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: false);
    final navigator = Navigator.of(context);
    await userProvider.login(
      context,
      email: email.text.trim(),
      password: password.text.trim(),
    );
    if (userProvider.isLoggedIn) {
      await navigator.pushReplacementNamed(AppRoute.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    // пароль

    return Expanded(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Войти'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InputEmailLogin(email: email),
                const SizedBox(height: 30),
                InputPasswordLogin(
                  password: password,
                  isHiddenPassword: isHiddenPassword,
                  tab: togglePasswordView,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: login,
                  child: const Center(child: Text('Войти')),
                ),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: () =>
                      Navigator.of(context).pushNamed(AppRoute.registration),
                  child: const Text(
                    'Регистрация',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
