import 'package:flutter/material.dart';
import 'package:travel/pages/navpages/bar_item_page.dart';
import 'package:travel/pages/home_page.dart';
import 'package:travel/pages/navpages/my_page.dart';
import 'package:travel/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages =[
    const HomePage(),
    SearchPage(),
    const BarItemPage(),
    const MyPage( )
  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex =index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        backgroundColor: Colors.blueGrey[400],
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 10,
        items: const [
          BottomNavigationBarItem(label:"Home", icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label:"Search", icon: Icon(Icons.search)),
          BottomNavigationBarItem(label:"Bar", icon: Icon(Icons.bar_chart)),
          BottomNavigationBarItem(label:"My", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}