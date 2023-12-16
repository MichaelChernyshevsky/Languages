import 'package:app_with_apps/core/exports/exports.dart';
import 'package:app_with_apps/core/localization/app_localization.dart';
import 'package:rive/rive.dart';

class RiveScreen extends StatefulWidget {
  const RiveScreen({super.key});

  @override
  State<RiveScreen> createState() => _RiveScreenState();
}

class _RiveScreenState extends State<RiveScreen> {
  SMINumber? inputValue_1;
  String rating_1 = '0';
  String state_2 = '';

  void _onRiveInit1(Artboard artboard) {
    final controller = StateMachineController.fromArtboard(
      artboard,
      'State Machine 1',
      onStateChange: (stateMachineName, animationName) {
        setState(() {
          rating_1 = animationName[0];
        });
      },
    );
    artboard.addController(controller!);
    if (controller.findInput<double>('Rating') != null) {
      inputValue_1 = controller.findInput<double>('Rating')! as SMINumber;
    }
  }

  void _onRiveInit2(Artboard artboard) {
    final controller = StateMachineController.fromArtboard(
      artboard,
      'State Machine 1',
      onStateChange: (stateMachineName, animationName) {
        setState(() {
          state_2 = animationName;
        });
      },
    );
    artboard.addController(controller!);
    if (controller.findInput<double>('level') != null) {
      inputValue_1 = controller.findInput<double>('level')! as SMINumber;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.current.rive),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                color: Colors.purple,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(rating_1),
                    Text(state_2),
                  ],
                ),
              ),
            ),
            rivePlaceHolder(
              context: context,
              rive: 'assets/animation/rating_animation.riv',
              onInit: _onRiveInit1,
              height: 200,
            ),
            rivePlaceHolder(
              context: context,
              height: 500,
              rive: 'assets/animation/mixing_animations.riv',
              onInit: _onRiveInit2,
            ),
          ],
        ),
      ),
    );
  }

  SizedBox rivePlaceHolder({
    required BuildContext context,
    required String rive,
    required var onInit,
    required double height,
  }) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: height,
      child: RiveAnimation.asset(
        rive,
        alignment: Alignment.center,
        fit: BoxFit.scaleDown,
        onInit: onInit,
      ),
    );
  }
}
