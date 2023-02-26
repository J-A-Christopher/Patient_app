import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patient_app/idividual_doctor_screen.dart';
import 'package:patient_app/login.dart';
import 'package:provider/provider.dart';
import './providers/doctors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Doctors(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent),
        home: Scaffold(
          backgroundColor: const Color.fromARGB(38, 69, 69, 69),
          body: Stack(children: [
            Container(
              height: 1000,
              width: 800,
              color: const Color.fromARGB(100, 100, 100, 100),
              child: SvgPicture.asset('Assets/img/doctor.svg'),
            ),
            const Positioned(
              top: 510,
              bottom: 200,
              left: 30,
              child: Text(
                'Dev Cj',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                ),
              ),
            ),
            const Positioned(
              bottom: 120,
              left: 30,
              child: Text(
                'Sick is easy, \n but health is hard.',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            Positioned(
                bottom: 50,
                left: 30,
                child: SizedBox(
                  width: 280,
                  height: 55,
                  child: Builder(
                    builder: ((context) => ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: const Text('Get Started'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                        )),
                    // child:
                  ),
                ))
          ]),
        ),
        routes: {'/individual-doc': (context) => IndividualDoctorScreen()},
      ),
    );
  }
}
