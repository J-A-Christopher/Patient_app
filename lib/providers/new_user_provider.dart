import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../models/create_account_model.dart';

class NUserProvider extends ChangeNotifier {
  final NewUser _person =
      NewUser(emailAddress: '', fullName: '', mobileNumber: '');

  NewUser get person => _person;
  void addPerson(NewUser person) {
    _person.emailAddress = person.emailAddress;
    _person.fullName = person.fullName;
    _person.mobileNumber = person.mobileNumber;
  }
}
