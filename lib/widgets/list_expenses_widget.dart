import 'package:flutter/material.dart';

class ListExpensesWidget extends StatelessWidget {
  final String category;
  const ListExpensesWidget({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Text(category),
          const SizedBox(width: 30),
          const Text('12%'),
          const Spacer(),
          const Text('600'),
          RawMaterialButton(
            onPressed: () {},
            fillColor: Colors.white,
            padding: const EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(color: Colors.grey),
            ),
            constraints: BoxConstraints.tight(
              const Size.square(30),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.blue,
              size: 30.0,
            ),
          )
        ],
      ),
    );
  }
}
