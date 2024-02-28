import 'package:finance/screens/Income_screen.dart';
import 'package:finance/screens/expenses_screen.dart';
import 'package:finance/widgets/custom_bottom_navigation_bar_widget.dart';
import 'package:finance/widgets/home_app_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  final List<String> _appBarTitles = [
    'Расходы',
    'Доходы',
    'Диаграма',
    'Трекер',
    'Настройки',
  ];
  final List<List<IconData>> _appBarIcons = [
    [Icons.more_vert],
    [Icons.calendar_today_outlined, Icons.map],
    [Icons.business, Icons.map],
    [Icons.calendar_today_outlined, Icons.map],
    [Icons.school, Icons.notifications, Icons.favorite],
  ];
  final List<Widget> _widgetOptions = <Widget>[
    const ExpensesScreen(),
    const IncomeScreen(),
    const Text('222'),
    const Text('333'),
    const Text('444'),
  ];

  @override
  Widget build(BuildContext context) {
    // List<IconData> data = [
    //   Icons.folder_open,
    //   Icons.notes_rounded,
    //   Icons.track_changes,
    //   Icons.note_alt_outlined,
    //   Icons.settings
    // ];

    return Scaffold(
      appBar: HomeAppBarWidget(_selectedIndex, _appBarTitles, _appBarIcons),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: CustomBottomNavigationBarWidget(
        _selectedIndex,
        _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
