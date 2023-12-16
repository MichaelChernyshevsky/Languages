import 'package:educational_project/screens/routes/apps/go_router.app/go_router.initial.dart';
import 'package:educational_project/screens/routes/widgets/animatedicon_screen.dart';
import 'package:educational_project/screens/routes/widgets/aspectRatio_screen.dart';
import 'package:educational_project/screens/routes/widgets/cupertinoActivityIndicator_screen.dart';
import 'package:educational_project/screens/routes/widgets/dataTable_screen.dart';
import 'package:educational_project/screens/routes/widgets/datePicker_screen.dart';
import 'package:educational_project/screens/routes/widgets/dio_screen.dart';
import 'package:educational_project/screens/routes/widgets/dismissible_screen.dart';
import 'package:educational_project/screens/routes/widgets/floatingActionButton_screen.dart';
import 'package:educational_project/screens/routes/widgets/image_screen.dart';
import 'package:educational_project/screens/routes/widgets/repaintBoundary_screen.dart';
import 'package:educational_project/screens/routes/widgets/richText_screen.dart';
import 'package:educational_project/screens/routes/widgets/selectableText_screen.dart';
import 'package:educational_project/screens/routes/widgets/slider_screen.dart';
import 'package:educational_project/screens/routes/widgets/webSocket_screen.dart';
import 'package:flutter/rendering.dart';

import 'imports.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ExampleProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => WidgetRouteProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => MiniAppRouteProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ApiAppRouteProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.purple,
          scaffoldBackgroundColor: const Color(0xff0D2743)),
      routes: {
        // main routes
        MainRoute.initial: (_) => const Home(),
        // apps routes
        AppRoute.api: (_) => const ApiApp(),
        AppRoute.goRouter: (_) => const Go_routerApp(),
        // api
        ApiRoutes.firstApi: (_) => const ApiFirstScreen(),
        ApiRoutes.secondApi: (_) => const ApiSecondScreen(),
        ApiRoutes.thirdApi: (_) => const ApiThirdScreen(),
        ApiRoutes.fourthApi: (_) => const ApiFourthScreen(),
        // widgets routes
        WidgetRoute.image: (_) => const ImageScreen(),
        WidgetRoute.dio: (_) => const DioScreen(),
        WidgetRoute.datePicker: (_) => const DatePickerScreen(),
        WidgetRoute.dismissible: (_) => const DismissibleScreen(),
        WidgetRoute.animatediconScreen: (_) => const AnimatediconScreen(),
        WidgetRoute.slider: (_) => const SliderScreen(),
        WidgetRoute.dataTable: (_) => DataTableScreen(),
        WidgetRoute.selectableText: (_) => const SelectableTextScreen(),
        WidgetRoute.richText: (_) => const RichTextScreen(),
        WidgetRoute.aspectRatio: (_) => const AspectRatioScreen(),
        WidgetRoute.cupertinoIndicatorScreen: (_) =>
            const CupertinoIndicatorScreen(),
        WidgetRoute.floatingActionButton: (_) =>
            const FloatingActionButtonScreen(),
        WidgetRoute.repaintBoundary: (_) => const RepaintBoundaryScreen(),
        WidgetRoute.opacity: (_) => const OpacityScreen(),
        WidgetRoute.wrap: (_) => const WrapScreen(),
        WidgetRoute.svg: (_) => const SvgScreen(),
        WidgetRoute.table: (_) => const TableScreen(),
        WidgetRoute.pageView: (_) => const PageViewScreen(),
        WidgetRoute.sliverAppBar: (_) => const SliverAppBarScreen(),
        WidgetRoute.fadeInImage: (_) => const FadeInImageScreen(),
        WidgetRoute.hero: (_) => const HeroScreen(),
        WidgetRoute.clip: (_) => const ClipRRectScreen(),
        WidgetRoute.tooltip: (_) => const ToolTipScreen(),
        WidgetRoute.fittedBox: (_) => const FittedBoxScreen(),
        WidgetRoute.absorbPointer: (_) => const AbsorbPointerScreen(),
        WidgetRoute.transform: (_) => const TransformScreen(),
        WidgetRoute.backdropFilter: (_) => const BackdropFilterScreen(),
        WidgetRoute.align: (_) => const AlignScreen(),
        WidgetRoute.positioned: (_) => const PositionedScreen(),
        WidgetRoute.navigationBar: (_) => const NavigationBarScreen(),
        WidgetRoute.baseline: (_) => const BaselineScreen(),
        WidgetRoute.linearGradient: (_) => const LinerGradientScreen(),
        WidgetRoute.autocomplete: (_) => const AutocompleteScreen(),
        WidgetRoute.googleFonts: (_) => const GoogleFontsScreen(),
        WidgetRoute.dropdownButton: (_) => const DropdownButtonScreen(),
        WidgetRoute.badges: (_) => const BadgesScreen(),
        WidgetRoute.switchListTile: (_) => const SwitchListTileScreen(),
        WidgetRoute.ratingBar: (_) => const RatingBarScreen(),
        WidgetRoute.snackBar: (_) => const SnackBarScreen(),
        WidgetRoute.gestureDetector: (_) => const GestureDetectorScreen(),
        WidgetRoute.fontAwesome: (_) => const FontAwesomeScreen(),
        WidgetRoute.animatedText: (_) => const AnimatedTextScreen(),
        WidgetRoute.expansionPanelList: (_) => const ExpansionPanelListScreen(),
        WidgetRoute.rotatedBox: (_) => const RotatedBoxScreen(),
        WidgetRoute.slidable: (_) => const SlidableScreen(),
        WidgetRoute.physicalModel: (_) => const PhysicalModelScreen(),
        WidgetRoute.gribview: (_) => const GribViewScreen(),
        WidgetRoute.webSocket: (_) => const WebSocketScreen(),
        // AppRoute. : (_) => const ,
        // AppRoute. : (_) => const ,
        // AppRoute. : (_) => const ,
        // AppRoute. : (_) => const ,
        // AppRoute. : (_) => const ,
        // AppRoute. : (_) => const ,
        // AppRoute. : (_) => const ,
        // AppRoute. : (_) => const ,
        // AppRoute. : (_) => const ,
        // AppRoute. : (_) => const ,
        // AppRoute. : (_) => const ,
        // AppRoute. : (_) => const ,
        // AppRoute. : (_) => const ,
        // AppRoute. : (_) => const ,
        // AppRoute. : (_) => const ,
        // AppRoute. : (_) => const ,
        // AppRoute. : (_) => const ,
        // AppRoute. : (_) => const ,
        // AppRoute. : (_) => const ,
        // AppRoute. : (_) => const ,
        // AppRoute. : (_) => const ,
        // AppRoute. : (_) => const ,
        // AppRoute. : (_) => const ,
      },
    );
  }
}
