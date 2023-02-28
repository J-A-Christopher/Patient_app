import 'package:flutter/material.dart';
import 'package:patient_app/doctor_item.dart';
import 'package:provider/provider.dart';
import './providers/doctors.dart';

class IndividualDoctorScreen extends StatelessWidget {
  const IndividualDoctorScreen({super.key});

  // final String docId;
  // final String docTitle;
  // const IndividualDoctorScreen(this.docId, this.docTitle);

  @override
  Widget build(BuildContext context) {
    final doctorsData = Provider.of<Doctors>(context);
    final doctors = doctorsData.doctors;
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final docTitle = routeArgs['title'];
    final docIds = routeArgs['id'];
    final categoryDocs = doctors.where((doc) {
      return doc.categories.contains(docIds);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(docTitle!),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return DoctorItem(
              imageUrl: categoryDocs[index].imageUrl,
              name: categoryDocs[index].name,
              specialization: categoryDocs[index].specialization,
              experience: categoryDocs[index].experience,
              language: categoryDocs[index].language,
            );
          },
          itemCount: categoryDocs.length,
        ));
  }
}
