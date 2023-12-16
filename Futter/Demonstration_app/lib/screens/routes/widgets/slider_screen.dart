import 'package:educational_project/imports.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _currentSliderValue = 20;

  double _currentSliderPrimaryValue = 0.2;
  double _currentSliderSecondaryValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Slider(
              value: _currentSliderValue,
              max: 100,
              divisions: 5,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            Column(
              children: [
                Slider(
                  value: _currentSliderPrimaryValue,
                  secondaryTrackValue: _currentSliderSecondaryValue,
                  label: _currentSliderPrimaryValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderPrimaryValue = value;
                    });
                  },
                ),
                Slider(
                  value: _currentSliderSecondaryValue,
                  label: _currentSliderSecondaryValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderSecondaryValue = value;
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
