import 'package:flutter/material.dart';
import './idividual_doctor_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  const CategoryItem(this.id, this.title, this.color, {super.key});

  void selectCategory(BuildContext context) {
    Navigator.of(context)
        .pushNamed('/individual-doc', arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(80),
      child: Container(
        margin: const EdgeInsets.only(left: 7),
        alignment: Alignment.center,
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80), color: color),
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
        ),
      ),
    );
  }
}
