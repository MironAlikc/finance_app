import 'package:finance/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBarWidget extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;
  final List<IconData> data = [
    Icons.folder_open,
    Icons.notes_rounded,
    Icons.track_changes,
    Icons.note_alt_outlined,
    Icons.settings
  ];

  CustomBottomNavigationBarWidget(this.selectedIndex, this.onItemTapped,
      {super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        color: ColorsApp.mainColor,
        child: SizedBox(
          height: 50,
          width: double.infinity,
          child: ListView.builder(
            itemCount: data.length,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            itemBuilder: (ctx, i) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GestureDetector(
                onTap: () {
                  if (selectedIndex == i) return;
                  onItemTapped(i);
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  width: 40,
                  decoration: BoxDecoration(
                    border: i == selectedIndex
                        ? const Border(
                            top: BorderSide(
                              width: 3.0,
                              color: Colors.white,
                            ),
                          )
                        : null,
                    gradient: i == selectedIndex
                        ? LinearGradient(
                            colors: [
                                Colors.grey.shade700,
                                const Color(0xFF0abab5)
                              ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)
                        : null,
                  ),
                  child: Icon(
                    data[i],
                    size: 35,
                    color: i == selectedIndex
                        ? Colors.white
                        : Colors.grey.shade700,
                  ),
                ),
              ),
            ),
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
