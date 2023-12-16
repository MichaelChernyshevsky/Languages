import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:educational_project/models/widget/dio/dio_connectivity_request_retrier.dart';
import 'package:educational_project/models/widget/dio/retry_interceptor.dart';

import '../../../imports.dart';

class DioScreen extends StatefulWidget {
  const DioScreen({super.key});

  @override
  State<DioScreen> createState() => _DioScreenState();
}

class _DioScreenState extends State<DioScreen> {
  late Dio dio;
  late String firstPostTitle;
  late bool isLoading;
  // инициализируем все необходимое
  @override
  void initState() {
    super.initState();
    dio = Dio();
    firstPostTitle = 'Press the button 👇';
    isLoading = false;
    // добавляем в перехватчик класс с параметрами
    dio.interceptors.add(
      RetryOnConnectionChangeInterceptor(
        requestRetrier: DioConnectivityRequestRetrier(
          dio: Dio(),
          connectivity: Connectivity(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            if (isLoading)
              const CircularProgressIndicator()
            else
              Text(
                firstPostTitle,
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
            // при нажатии мы устанавливаем что пользователь зарегистрировался и выводим заголовок первого значения
            ElevatedButton(
              child: const Text('REQUEST DATA'),
              onPressed: () async {
                setState(() {
                  isLoading = true;
                });
                final response =
                    await dio.get('https://jsonplaceholder.typicode.com/posts');
                setState(() {
                  firstPostTitle = response.data[0]['title'] as String;
                  isLoading = false;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
