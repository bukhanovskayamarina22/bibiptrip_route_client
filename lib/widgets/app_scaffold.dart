

import 'package:bibiptrip_route_client/pages/search_page.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SearchPage(),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({
    super.key,
  });

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  late int _currentIndex;
  // ignore: unused_field
  late List<Widget> _pages;

  @override
  void initState() {
    _currentIndex = 0;
    _pages = [
      const SearchPage(),
      const Center(
        child: Text("Create Page"),
      ),
      const Center(
        child: Text("Rides Page"),
      ),
      const Center(
        child: Text("Profile Page"),
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: BottomNavigationBar(
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Theme.of(context).colorScheme.secondary,
        selectedLabelStyle: Theme.of(context).textTheme.labelMedium!.copyWith(color: Theme.of(context).colorScheme.primary),
        unselectedLabelStyle: Theme.of(context).textTheme.labelMedium!.copyWith(color: Theme.of(context).colorScheme.secondary),
        showSelectedLabels: true,
        showUnselectedLabels: true,

        iconSize: 28,
        type: BottomNavigationBarType.fixed,
        elevation: 0,

      
        currentIndex: _currentIndex, 
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search_rounded,
          ),
          label: "Поиск"
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_circle_outline,
            
          ),
          label: "Поиск"
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.drive_eta,
            
          ),
          label: "Поездки"
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            
          ),
          label: "Профиль"
        ),
      ]),
    );
  }
}