import 'package:flutter/material.dart';

class DoctorItem extends StatelessWidget {
  final String name;
  final String specialization;
  final String experience;
  final String language;
  final String imageUrl;

  const DoctorItem(
      {super.key,
      required this.experience,
      required this.imageUrl,
      required this.language,
      required this.name,
      required this.specialization});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Image.network(
                  imageUrl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    width: 300,
                    color: Colors.black54,
                    child: Text(
                      name,
                      style: const TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ))
            ],
          ),
          Text(
            'Specialization:  $specialization',
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            'Experience:  $experience',
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            'Language:  $language',
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          ElevatedButton(
              onPressed: () {}, child: const Text('Book an appointment'))
        ],
      ),
    );
  }
}
