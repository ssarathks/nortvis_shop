import 'package:flutter/material.dart';
import 'package:nortvis_task/screens/products_list_screen.dart';
import 'package:nortvis_task/screens/tabbed_food_list_screen.dart';

class TabbedLayouScreen extends StatefulWidget {
  const TabbedLayouScreen({super.key});

  @override
  State<TabbedLayouScreen> createState() => _TabbedLayouScreenState();
}

class _TabbedLayouScreenState extends State<TabbedLayouScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const ProductsListScreen(),
    const TabbedFoodListScreen(),
  ];

  void _tabChangeHandler(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _screens[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Screen 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank_outlined),
            label: 'Screen 2',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _tabChangeHandler,
      ),
    );
  }
}
