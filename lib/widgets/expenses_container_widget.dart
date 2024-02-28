import 'package:finance/models/category_model.dart';
import 'package:finance/widgets/list_expenses_widget.dart';
import 'package:flutter/material.dart';

class ExpensesContainerWidget extends StatelessWidget {
  final List<CategoryModel> categories;

  const ExpensesContainerWidget({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 244, 241, 241),
      ),
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        shrinkWrap: true,
        itemCount: categories.length,
        itemBuilder: (context, index) => ListExpensesWidget(
          category: categories[index].name,
        ),
      ),
    );
  }
}
