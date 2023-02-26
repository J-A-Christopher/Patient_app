import 'package:flutter/material.dart';
import '../models/doctor_data.dart';

class Doctors with ChangeNotifier {
  final List<DoctorData> _doctors = const [
    DoctorData(
        id: 'd1',
        name: 'Dr. Lameck Obadiah',
        specialization: 'Ear',
        experience: '15 Years',
        language: 'English',
        categories: ['c1'],
        imageUrl:
            'https://images.unsplash.com/photo-1514416432279-50fac261c7dd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80'),
    DoctorData(
        id: 'd2',
        name: 'Dr. Mitchelle Omaso',
        specialization: 'Heart',
        experience: '10 Years',
        language: 'English',
        categories: ['c2'],
        imageUrl:
            'https://plus.unsplash.com/premium_photo-1661741205635-2acce1b32966?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
    DoctorData(
        id: 'd3',
        name: 'Dr. Samwel Ongou',
        specialization: 'Brain',
        experience: '20 Years',
        language: 'English',
        categories: ['c3'],
        imageUrl:
            'https://images.unsplash.com/photo-1549560976-cf6be881db29?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
    DoctorData(
        id: 'd4',
        name: 'Dr. Owino Kevin',
        specialization: 'Gyno',
        experience: '20 Years',
        language: 'English',
        categories: ['c5'],
        imageUrl:
            'https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
    DoctorData(
        id: 'd5',
        name: 'Dr. Dave Emery',
        specialization: 'Kidney',
        experience: '21 Years',
        language: 'English',
        categories: ['c4'],
        imageUrl:
            'https://images.unsplash.com/photo-1514416205405-075ab2f15964?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
    DoctorData(
        id: 'd6',
        name: 'Dr. Moraa Diana',
        specialization: 'Pediatrician',
        experience: '32 Years',
        categories: ['c6'],
        language: 'English',
        imageUrl:
            'https://images.unsplash.com/photo-1571772996211-2f02c9727629?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
    DoctorData(
        id: 'd7',
        name: 'Dr. Laureen Cherop',
        specialization: 'General Doctor',
        experience: '27 Years',
        language: 'English',
        categories: ['c7'],
        imageUrl:
            'https://plus.unsplash.com/premium_photo-1663045656809-a3b72dd7b1df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
    DoctorData(
        id: 'd8',
        name: 'Dr. Hellen  Samkul',
        specialization: 'General Doctor',
        categories: ['c7'],
        experience: '27 Years',
        language: 'English',
        imageUrl:
            'https://plus.unsplash.com/premium_photo-1661581951589-3e7da59c1359?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80'),
    DoctorData(
        id: 'd9',
        name: 'Dr. Hassan Omar',
        specialization: 'Pediatrician',
        experience: '18 Years',
        language: 'English',
        categories: ['c6'],
        imageUrl:
            'https://plus.unsplash.com/premium_photo-1661347962154-2400e2e12f7b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1469&q=80'),
    DoctorData(
        id: 'd10',
        name: 'Dr. Allan Mingo',
        specialization: 'Gyno',
        experience: '14 Years',
        categories: ['c5'],
        language: 'English',
        imageUrl:
            'https://images.unsplash.com/photo-1622253692010-333f2da6031d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80'),
    DoctorData(
        id: 'd11',
        name: 'Dr. Pablo Escobar',
        specialization: 'Ear',
        experience: '17 Years',
        language: 'English',
        categories: ['c1'],
        imageUrl:
            'https://images.unsplash.com/photo-1550831107-1553da8c8464?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
  ];

  List<DoctorData> get doctors {
    return [..._doctors];
  }
}
