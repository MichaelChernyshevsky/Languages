import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FlutterTts tts = FlutterTts();
  final TextEditingController ted = TextEditingController();

  void speak({required String text}) async {
    await tts.setLanguage("en-Us");
    //speed
    await tts.setPitch(1.5);
    await tts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.blueAccent,
                child: Row(
                  children: [
                    Container(
                      color: Colors.green,
                      width: 300, // do it in both Container
                      child: TextFormField(
                        controller: ted,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => speak(text: ted.text),
                      child: const Text('Speetch'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
