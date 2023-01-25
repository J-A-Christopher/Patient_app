import 'package:flutter/material.dart';
import './home.dart';
import './appointments.dart';
import './settings.dart';

class Introduction extends StatefulWidget {
  final String nameEditingController;
  const Introduction({super.key, required this.nameEditingController});

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  int pageIndex = 0;
  final pages = [
    const Home(nameEditingController: 'Jesse'),
    const Appointments(),
    const Settings()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[pageIndex],
        bottomNavigationBar: Container(
          color: const Color(0xff0E1D35),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: pageIndex == 0
                    ? const Icon(
                        Icons.home_filled,
                        color: Colors.white,
                        size: 35,
                      )
                    : const Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: pageIndex == 1
                    ? const Icon(
                        Icons.notifications_active,
                        color: Colors.white,
                        size: 35,
                      )
                    : const Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 35,
                      ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    setState(() {
                      pageIndex = 2;
                    });
                  });
                },
                icon: pageIndex == 2
                    ? const Icon(
                        Icons.settings_applications,
                        color: Colors.white,
                        size: 35,
                      )
                    : const Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 35,
                      ),
              )
            ],
          ),
        ));
  }
}
