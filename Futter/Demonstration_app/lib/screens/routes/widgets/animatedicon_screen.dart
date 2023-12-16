import '../../../imports.dart';

class AnimatediconScreen extends StatefulWidget {
  const AnimatediconScreen({super.key});

  @override
  State<AnimatediconScreen> createState() => _AnimatediconScreenState();
}

class _AnimatediconScreenState extends State<AnimatediconScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )
      ..forward()
      ..repeat(reverse: true);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: animation,
        size: 72.0,
        semanticLabel: 'Show menu',
      ),
    );
  }
}
