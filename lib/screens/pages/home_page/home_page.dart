import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (BuildContext context) {
            //   return ProfilePage();
            // }));
          },
        ),
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            "Home Page",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}
