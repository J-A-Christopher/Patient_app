import 'package:flutter/material.dart';
import './providers/new_user_provider.dart';
import 'package:provider/provider.dart';
import './providers/user_provider.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final usData = Provider.of<NUserProvider>(context, listen: false);
    final user = Provider.of<UserProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Information'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Username'),
          Text(user.user.name),
          Text('Email address'),
          Text(user.user.email),
          Text('Phone Number'),
          Text(usData.person.mobileNumber)
        ],
      ),
    );
  }
}
