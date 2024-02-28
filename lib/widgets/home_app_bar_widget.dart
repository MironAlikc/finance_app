import 'package:finance/widgets/home_app_bar_icon_widget.dart';
import 'package:flutter/material.dart';

class HomeAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final int _selectedIndex;
  final List<String> _appBarTitles;
  final List<List<IconData>> _appBarIcons;

  const HomeAppBarWidget(
      this._selectedIndex, this._appBarTitles, this._appBarIcons,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Text(
        _appBarTitles[_selectedIndex],
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: _appBarIcons[_selectedIndex].map((icon) {
              return HomeAppBarIconWidget(icon);
            }).toList(),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
