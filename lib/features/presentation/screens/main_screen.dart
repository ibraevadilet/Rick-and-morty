import 'package:flutter/material.dart';
import 'package:rick_test/core/constants/text_consts.dart';
import 'package:rick_test/features/presentation/screens/list_episodes_screen/list_episodes_screen.dart';
import 'package:rick_test/features/presentation/screens/list_persons_screen/list_persons_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  List screens = [
    const PersonsScreen(),
    const EpisodesScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: TextConsts.persons,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.image),
              label: TextConsts.episodes,
            ),
          ]),
      body: screens[_currentIndex],
    );
  }
}
