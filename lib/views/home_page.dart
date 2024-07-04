import 'package:flutter/material.dart';
import 'package:kasvihuonesovellus/views/greenhouse_monitor.dart';
import 'package:kasvihuonesovellus/views/settings_page.dart';
import 'package:kasvihuonesovellus/views/statistics_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    GreenhouseMonitor(),
    StatisticsPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Koti'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart), label: 'Historia'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Asetukset'),
        ],
      ),
    );
  }
}
