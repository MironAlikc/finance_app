import 'package:finance/presentation/screens/categories_screen.dart';
import 'package:flutter/material.dart';

class HomeAppBarIconWidget extends StatelessWidget {
  final IconData icon;

  const HomeAppBarIconWidget(this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon, color: Colors.black),
      onPressed: () {
        if (icon == Icons.more_vert) {
          showMenu(
            context: context,
            position: RelativeRect.fromLTRB(
              MediaQuery.of(context).size.width,
              AppBar().preferredSize.height,
              0.0,
              0.0,
            ),
            items: [
              PopupMenuItem(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CategoriesScreen(),
                    ),
                  );
                },
                value: 'Опция 1',
                child: const Text(
                  'Управление категориями',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
              ),
              const PopupMenuItem(
                value: 'Опция 2',
                child: Text('Опция 2'),
              ),
              const PopupMenuItem(
                value: 'Опция 3',
                child: Text('Опция 3'),
              ),
            ],
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Colors.white,
            elevation: 8.0,
          );
        } else if (icon == Icons.calendar_today_outlined) {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //       builder: (context) => const CalendarScreen()),
          // );
        }
        // Добавь другие условия для остальных иконок
      },
    );
  }
}
