import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    'Grocery',
    'Mobiles',
    'Fashion',
    'Electronics',
    'Home',
    'Personal Care',
    'Appliances',
    'Toys & Baby',
    'Furniture',
    'Sports',
    'Nutrition',
    'Others'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (
          BuildContext context,
          int index,
        ) {
          return GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                dense: true,
                visualDensity: const VisualDensity(
                  vertical: 4,
                ),
                title: Text(
                  categories[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                leading: const Icon(
                  Icons.category_rounded,
                  size: 30,
                  color: Colors.red,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
