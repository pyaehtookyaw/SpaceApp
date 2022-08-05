import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:space_app/helpers/response_ob.dart';
import 'package:space_app/screens/pages/main_page/main_page.dart';
import 'package:space_app/screens/pages/register_page/register_bloc.dart';
import 'package:space_app/utils/app_utils.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var usernameTec = TextEditingController();
  var passwordTec = TextEditingController();
  var confirmPasswordTec = TextEditingController();
  var emailTec = TextEditingController();
  var phoneTec = TextEditingController();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _bloc = RegisterBloc();

  @override
  void initState() {
    super.initState();

    _bloc.registerStream().listen((ResponseOb resp) {
      if (resp.message == MsgState.data) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) {
          return MainPage();
        }), (route) => false);
      }
      if (resp.message == MsgState.error) {
        if (resp.errState == ErrState.userErr) {
          AppUtils.showSnackBar(
              resp.data.toString(), _scaffoldKey.currentState);
        } else {
          AppUtils.showSnackBar("Something Wrong!", _scaffoldKey.currentState);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      // backgroundColor: Colors.grey.shade100,
      backgroundColor: NeumorphicTheme.baseColor(context),
      appBar: NeumorphicAppBar(
        leading: NeumorphicButton(
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          style: NeumorphicStyle(
            // shadowLightColor: Colors.orange,
            // shadowDarkColor: Colors.orange,
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(100)),
            intensity: 20,
            depth: 2,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Register'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Image(
                width: 200,
                height: 200,
                image: AssetImage('assets/images/SpaceFM_gold2.png')),
            Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: -2,
                lightSource: LightSource.topLeft,
              ),
              child: TextField(
                controller: usernameTec,
                decoration: const InputDecoration(
                    hintText: "Enter Username",
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
            const SizedBox(height: 20),
            Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                depth: -2,
                lightSource: LightSource.topLeft,
              ),
              child: TextField(
                controller: confirmPasswordTec,
                decoration: const InputDecoration(
                    hintText: "Enter Confirm Password",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 10)),
                obscureText: true,
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
              ),
              child: TextField(
                controller: phoneTec,
                decoration: const InputDecoration(
                    hintText: "Enter Phone",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 10)),
              ),
            ),
            const SizedBox(height: 30),
            AppUtils.loadingWidget(
              stream: _bloc.registerStream(),
              widget: NeumorphicButton(
                onPressed: checkRegister,
                child: Center(
                  child: Text(
                    "Create Account",
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  checkRegister() {
    if (usernameTec.text.isEmpty ||
        passwordTec.text.isEmpty ||
        confirmPasswordTec.text.isEmpty ||
        emailTec.text.isEmpty ||
        phoneTec.text.isEmpty) {
      AppUtils.showSnackBar("Fill Data", _scaffoldKey.currentState);
      return;
    }
    if (passwordTec.text != confirmPasswordTec.text) {
      AppUtils.showSnackBar(
          "Password do not match.", _scaffoldKey.currentState);
      return;
    }
    Map<String, String> map = {
      'username': usernameTec.text,
      'password': passwordTec.text,
      'email': emailTec.text,
      'phone': phoneTec.text
    };

    _bloc.register(map);
  }

  @override
  void dispose() {
    // _bloc.dispose();
    super.dispose();
  }
}
