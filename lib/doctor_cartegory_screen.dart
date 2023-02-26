import 'package:flutter/material.dart';
import './dummy_data.dart';
import './doctor_category_item.dart';

class DoctorCat extends StatelessWidget {
  const DoctorCat({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: DUMMY_CATEGORIES
              .map((catData) =>
                  CategoryItem(catData.id, catData.title, catData.color))
              .toList()),
    );
  }
}
