import 'package:finance/presentation/models/category_model.dart';
import 'package:finance/presentation/widgets/expenses_container_widget.dart';
import 'package:flutter/material.dart';

class ExpensesScreen extends StatefulWidget {
  
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  List<CategoryModel> categories = [
    
    CategoryModel('Продукты'),
    CategoryModel('Оразование'),
    CategoryModel('Транспорт'),
    CategoryModel('Здорове'),
    CategoryModel('Отдых и развлечение'),
    CategoryModel('Кафе и рестораны'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              ExpensesContainerWidget(
                categories: categories,
              ),
              const Text('История'),
              //AddCategoryButton()
              AddCategoryButton(onAddCategory: (newCategory) {
                setState(() {
                  categories.add(CategoryModel(newCategory));
                });
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class AddCategoryButton extends StatelessWidget {
  final Function(String) onAddCategory;

  const AddCategoryButton({
    required this.onAddCategory,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            String newCategory = '';
            return AlertDialog(
              title: Text('Добавить категорию'),
              content: TextField(
                onChanged: (value) {
                  newCategory = value;
                },
              ),
              actions: [
                ElevatedButton(
                  child: Text('Добавить'),
                  onPressed: () {
                    onAddCategory(newCategory);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
      child: const Text('Добавить категорию'),
    );
  }
}
