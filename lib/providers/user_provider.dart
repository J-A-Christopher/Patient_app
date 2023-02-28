import '../models/user_model.dart';
import 'package:flutter/foundation.dart';

class UserProvider extends ChangeNotifier {
  final User _user = User(email: '', name: '');

  User get user => _user;
  void addUser(User user) {
    _user.name = user.name;
    _user.email = user.email;
    notifyListeners();
  }
}
