import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:space_app/helpers/shared_pref.dart';
import 'package:space_app/screens/pages/login_page/login_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () async {
      // await SharedPref.getData(key: SharedPref.token).then((token) {
      //   print(token);
      //   if (token.toString() != "null" && token != null) {
      //     // Navigator.of(context).pushAndRemoveUntil(
      //     //     MaterialPageRoute(builder: (BuildContext context) {
      //     //   return HomePage();
      //     // }), (route) => false);
      //   } else {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (BuildContext context) {
        return LoginPage();
      }), (route) => false);
      // }
      // });
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
            width: 200,
            height: 200,
            image: AssetImage('assets/images/SpaceFM_gold2.png')),
        //  FlutterLogo(
        //   size: 100,
        // ),
      ),
    );
  }
}
