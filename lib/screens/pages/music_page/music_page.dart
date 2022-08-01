import 'dart:ui';

import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
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
        title: const Text('Music'),
        centerTitle: true,
        actions: [
          NeumorphicButton(
            child: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            style: NeumorphicStyle(
              // shadowLightColor: Colors.orange,
              // shadowDarkColor: Colors.orange,
              shape: NeumorphicShape.flat,
              boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(100)),
              intensity: 20,
              depth: 2,
            ),
            onPressed: () {
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (BuildContext context) {
              //   return ProfilePage();
              // }));
            },
          )
        ],
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Neumorphic(
                  padding: EdgeInsets.all(0),
                  child: Column(
                    children: [
                      Image.network(
                          width: 150,
                          height: 150,
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
              SizedBox(
                height: 10,
              ),
              Text(
                "Music Name",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 30,
              ),
              NeumorphicSlider(
                style: SliderStyle(
                  depth: 2,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NeumorphicButton(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    style: NeumorphicStyle(
                      // shadowLightColor: Colors.orange,
                      // shadowDarkColor: Colors.orange,
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(100)),
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
                  const SizedBox(
                    width: 15,
                  ),
                  NeumorphicButton(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    style: NeumorphicStyle(
                      // shadowLightColor: Colors.orange,
                      // shadowDarkColor: Colors.orange,
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(100)),
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
                  const SizedBox(
                    width: 15,
                  ),
                  NeumorphicButton(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    style: NeumorphicStyle(
                      // shadowLightColor: Colors.orange,
                      // shadowDarkColor: Colors.orange,
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(100)),
                      intensity: 20,
                      depth: 2,
                    ),
                    onPressed: () {
                      // Navigator.of(context)
                      //     .push(MaterialPageRoute(builder: (BuildContext context) {
                      //   return ProfilePage();
                      // }));
                    },
                  )
                ],
              )
            ],
          )),
    );
  }
}
