
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
    return Scaffold(
      body: Center(
        child: FlutterLogo(
          size: 100,
        ),
      ),
    );
  }
}
