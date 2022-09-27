import 'package:books_app/home_screen.dart';
import 'package:books_app/search_screen.dart';
import 'package:books_app/util/custom_icon.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int _selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final _destinations = <AdaptiveScaffoldDestination>[
    const AdaptiveScaffoldDestination(title: "Home", icon: CustomIcon.home),
    const AdaptiveScaffoldDestination(
        title: "Bookmark", icon: CustomIcon.bookmark),
    const AdaptiveScaffoldDestination(title: "User", icon: CustomIcon.user),
  ];

  @override
  Widget build(BuildContext context) {
    return AdaptiveNavigationScaffold(
      appBar: AdaptiveAppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Digibook",
          style: TextStyle(
              color: Color(0xff333740),
              fontWeight: FontWeight.w700,
              fontSize: 24),
        ),
        toolbarHeight: 75,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => SearchScreen())));
                },
                icon: const Icon(
                  CustomIcon.search,
                  color: Color(0xff333740),
                )),
          )
        ],
      ),
      body: const HomeScreen(),
      selectedIndex: _selectedIndex,
      destinations: _destinations,
      onDestinationSelected: onItemTapped,
    );
  }
}

// 1024 - Navigation Rail
// 1440 - Navigation Rail with Description