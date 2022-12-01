import 'package:flutter/material.dart';
import 'package:github_api/presentation/home_page/find_repository_page.dart';
import 'package:github_api/presentation/home_page/history_of_searching_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          "Find repository",
          style: Theme.of(context).textTheme.headline3,
        )),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.find_in_page), label: 'Find a repository'),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
          ],
          onTap: _onTappedBar,
          selectedItemColor: Colors.orange,
          currentIndex: _selectedIndex,
        ),
        body: PageView(
          controller: _pageController,
          children: const [FindRepositoryPage(), HistoryOfSearchingPage()],
        ));
  }

  void _onTappedBar(int value) {
    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}
