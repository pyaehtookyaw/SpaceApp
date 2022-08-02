import 'dart:ui';

import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:space_app/screens/pages/profile_page/profile_page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicTheme.of(context)!.isUsingDark
          ? Color(0xFF3E3E3E)
          : Color(0xFFFFFFFF),
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
        title: const Text('Settings'),
        centerTitle: true,
        actions: [
          Switch(
            value: NeumorphicTheme.of(context)!.isUsingDark,
            onChanged: (bool value) {
              if (NeumorphicTheme.of(context)!.isUsingDark) {
                NeumorphicTheme.of(context)!.themeMode = ThemeMode.light;
              } else {
                NeumorphicTheme.of(context)!.themeMode = ThemeMode.dark;
              }
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Neumorphic(
                    padding: EdgeInsets.all(0),
                    child: Column(
                      children: [
                        Image.network(
                            width: 100,
                            height: 100,
                            'https://images.unsplash.com/photo-1597466765990-64ad1c35dafc'),
                      ],
                    ),
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(100)),
                      intensity: 20,
                      depth: 2,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "User Name",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ProifilePage();
                  })),
                  child: Neumorphic(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Container"),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(5)),
                      intensity: 20,
                      depth: 2,
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
