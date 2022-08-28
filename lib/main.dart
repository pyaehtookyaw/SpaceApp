import 'dart:io';

import 'package:flutter_carplay/flutter_carplay.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:space_app/screens/pages/splash_page/splash_page.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey =
      'pk_test_51LUjOKJBBz0ivrs4ozOI3E493A8zOgf3ZHfs3eHOv1iE1MJtJt7FeOsWjUteBfhyNVSowHH6H3P3Z4cS94wFETU600zpQdcOCC';
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: 'Neumorphic App',
      themeMode: ThemeMode.dark,
      theme: const NeumorphicThemeData(
        baseColor: Color(0xFFFFFFFF),
        lightSource: LightSource.topLeft,
        depth: 10,
      ),
      darkTheme: const NeumorphicThemeData(
        baseColor: Color(0xFF3E3E3E),
        lightSource: LightSource.topLeft,
        depth: 6,
      ),
      home: SplashPage(),
    );
  }
}
