import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:space_app/screens/pages/home_page/home_page.dart';
import 'package:space_app/screens/pages/setting_page/setting_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    SettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NeumorphicTheme.of(context)!.isUsingDark
          ? Color(0xFF3E3E3E)
          : Color(0xFFFFFFFF),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.business),
      //       label: 'Business',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.school),
      //       label: 'School',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.orange,
      //   onTap: _onItemTapped,
      // ),
      bottomNavigationBar: Container(
        height: 60,
        // decoration: BoxDecoration(
        //   color: Theme.of(context).primaryColor,
        //   borderRadius: const BorderRadius.only(
        //     topLeft: Radius.circular(20),
        //     topRight: Radius.circular(20),
        //   ),
        // ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NeumorphicButton(
              child: Icon(
                Icons.home,
                color: _selectedIndex == 0
                    ? NeumorphicTheme.of(context)!.isUsingDark
                        ? Colors.orange
                        : Colors.green
                    : NeumorphicTheme.of(context)!.isUsingDark
                        ? Colors.white
                        : Colors.black,
              ),
              style: NeumorphicStyle(
                shadowLightColor: _selectedIndex == 0
                    ? NeumorphicTheme.of(context)!.isUsingDark
                        ? Colors.orange
                        : Colors.green
                    : NeumorphicTheme.of(context)!.isUsingDark
                        ? Colors.white
                        : Colors.black,
                // shadowDarkColor:
                //     _selectedIndex == 0 ? Colors.orange : Colors.white,
                shape: NeumorphicShape.flat,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
                intensity: 20,
                depth: 2,
              ),
              onPressed: () => _onItemTapped(0),
            ),
            NeumorphicButton(
              child: Icon(
                Icons.music_video,
                color: _selectedIndex == 1
                    ? NeumorphicTheme.of(context)!.isUsingDark
                        ? Colors.orange
                        : Colors.green
                    : NeumorphicTheme.of(context)!.isUsingDark
                        ? Colors.white
                        : Colors.black,
              ),
              style: NeumorphicStyle(
                shadowLightColor: _selectedIndex == 1
                    ? NeumorphicTheme.of(context)!.isUsingDark
                        ? Colors.orange
                        : Colors.green
                    : NeumorphicTheme.of(context)!.isUsingDark
                        ? Colors.white
                        : Colors.black,
                // shadowDarkColor:
                //     _selectedIndex == 1 ? Colors.orange : Colors.white,
                shape: NeumorphicShape.flat,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
                intensity: 20,
                depth: 2,
              ),
              onPressed: () => _onItemTapped(1),
            ),
            NeumorphicButton(
              child: Icon(
                Icons.settings,
                color: _selectedIndex == 2
                    ? NeumorphicTheme.of(context)!.isUsingDark
                        ? Colors.orange
                        : Colors.green
                    : NeumorphicTheme.of(context)!.isUsingDark
                        ? Colors.white
                        : Colors.black,
              ),
              style: NeumorphicStyle(
                shadowLightColor: _selectedIndex == 2
                    ? NeumorphicTheme.of(context)!.isUsingDark
                        ? Colors.orange
                        : Colors.green
                    : NeumorphicTheme.of(context)!.isUsingDark
                        ? Colors.white
                        : Colors.black,
                // shadowDarkColor: Colors.orange,
                shape: NeumorphicShape.flat,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
                intensity: 20,
                depth: 2,
              ),
              onPressed: () => _onItemTapped(2),
            ),
            // IconButton(
            //   enableFeedback: false,
            //   onPressed: () {},
            //   icon: const Icon(
            //     Icons.widgets_outlined,
            //     color: Colors.white,
            //     size: 35,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
