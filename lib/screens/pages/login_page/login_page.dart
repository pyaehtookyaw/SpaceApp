import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:space_app/screens/pages/main_page/main_page.dart';
import 'package:space_app/utils/app_utils.dart';

//import 'login_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailTec = TextEditingController();
  var passwordTec = TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  // final _bloc = LoginBloc();

  @override
  void initState() {
    super.initState();

    // _bloc.loginStream().listen((ResponseOb resp) {
    //   if (resp.message == MsgState.data) {
    //     Navigator.of(context).pushAndRemoveUntil(
    //         MaterialPageRoute(builder: (BuildContext context) {
    //       return HomePage();
    //     }), (route) => false);
    //   }
    //   if (resp.message == MsgState.error) {
    //     if (resp.errState == ErrState.userErr) {
    //       AppUtils.showSnackBar(
    //           resp.data.toString(), _scaffoldKey.currentState);
    //     } else {
    //       AppUtils.showSnackBar("Something Wrong!", _scaffoldKey.currentState);
    //     }
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      // backgroundColor: Colors.grey.shade100,
      backgroundColor: NeumorphicTheme.baseColor(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // const SizedBox(height: 80),
            // const FlutterLogo(
            //   size: 100,
            // ),
            const SizedBox(height: 80),
            NeumorphicText(
              "Space App",
              style: NeumorphicStyle(
                color: Colors.white,
                shadowLightColor: Colors.orange,
                // shadowDarkColor: Colors.orange,
                shape: NeumorphicShape.convex,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                intensity: 20,
                depth: 2,
//                lightSource: LightSource.topLeft,
              ),
              // style: NeumorphicStyle(
              //   depth: 4, //customize depth here
              //   color: Colors.white, //customize color here
              // ),
              textStyle: NeumorphicTextStyle(
                fontSize: 30, //customize size here
                // AND others usual text style properties (fontFamily, fontWeight, ...)
              ),
            ),
            const SizedBox(height: 80),
            Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: -2,
                lightSource: LightSource.topLeft,
//                    color: Colors.grey
              ),
              child: TextField(
                controller: emailTec,
                decoration: const InputDecoration(
                    hintText: "Enter Email",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 10)),
              ),
            ),
            const SizedBox(height: 20),
            Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: -2,
                lightSource: LightSource.topLeft,
//                    color: Colors.grey
              ),
              child: TextField(
                controller: passwordTec,
                decoration: const InputDecoration(
                    hintText: "Enter Password",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 10)),
                obscureText: true,
              ),
            ),
            const SizedBox(height: 30),
            AppUtils.loadingWidget(
              stream: null, // _bloc.loginStream(),
              widget: NeumorphicButton(
                onPressed: checkLogin,
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                style: NeumorphicStyle(
                  shadowLightColor: Colors.orange,
                  shadowDarkColor: Colors.orange,
                  shape: NeumorphicShape.flat,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                  intensity: 20,
                  depth: 2,
//                lightSource: LightSource.topLeft,
                ),
              ),
            ),
            const SizedBox(height: 20),
            NeumorphicButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MainPage();
                }));
              },
              child: Center(
                child: Text(
                  "Register",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              style: NeumorphicStyle(
                // color: Colors.green,
                shadowLightColor: Colors.orange,
                shadowDarkColor: Colors.orange,
                //  shadowDarkColorEmboss: Colors.green,
                shape: NeumorphicShape.flat,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                intensity: 20,
                depth: 2,

//                lightSource: LightSource.topLeft,
              ),
            )
          ],
        ),
      ),
    );
  }

  checkLogin() {
    if (emailTec.text.isEmpty || passwordTec.text.isEmpty) {
      AppUtils.showSnackBar("Fill Data", _scaffoldKey.currentState);
      return;
    }

    Map<String, String> map = {
      'email': emailTec.text,
      'password': passwordTec.text,
    };

    // _bloc.login(map);
  }

  @override
  void dispose() {
    // _bloc.dispose();
    super.dispose();
  }
}
