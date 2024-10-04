import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/screens/calendar.dart';
import 'package:travel_app/screens/mess.dart';
import 'package:travel_app/screens/profiles.dart';
import 'package:travel_app/screens/home.dart';
import 'package:travel_app/screens/search.dart';

class BottomConvexs extends StatefulWidget {
  const BottomConvexs({super.key, this.index});

  final int? index;

  @override
  State<BottomConvexs> createState() => _BottomConvexsState();
}

class _BottomConvexsState extends State<BottomConvexs> {
  int _selectedIndex = 0;

  final _screens = [
    const HomeTravel(),
    const CalendarTravel(),
    const SearchTravel(),
    const MessTravel(),
    const ProfileTravel(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: ConvexAppBar(
        color: const Color(0xFF7D848D),
        activeColor: Colors.blue,
        backgroundColor: Colors.white,
        style: TabStyle.fixed,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.calendar_month, title: 'Calendar'),
          TabItem(icon: Icons.search, title: 'Search'),
          TabItem(icon: Icons.message, title: 'Messages'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        initialActiveIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
