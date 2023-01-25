import 'package:flutter/material.dart';
import 'package:patient_app/intro.dart';
import './login.dart';

TextEditingController emailEditingController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class Login extends StatelessWidget {
  Login({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController nameEditingController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            height: 1200,
            width: 500,
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: const AssetImage('Assets/img/docs.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(.2), BlendMode.dstATop))),
          ),
          const Positioned(
              top: 120,
              left: 30,
              child: Text(
                'Care your \n health, \n care your life.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                ),
              )),
          Positioned(
              top: 300,
              right: 1,
              left: 1,
              child: SizedBox(
                height: 550,
                width: 500,
                child: Card(
                  color: const Color(0xff0E1D35),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      const Text(
                        'Log In',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextField(
                          style: const TextStyle(color: Colors.white),
                          controller: nameEditingController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFF0a2351),
                              hintStyle: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                              prefixIcon: const Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              hintText: 'Key In Your Name',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextField(
                          style: const TextStyle(color: Colors.white),
                          controller: emailEditingController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFF0a2351),
                              hintStyle: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                              prefixIcon: const Icon(
                                Icons.email_rounded,
                                color: Colors.white,
                              ),
                              hintText: 'Email Adress',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextField(
                          style: const TextStyle(color: Colors.white),
                          controller: emailEditingController,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFF0a2351),
                              hintStyle: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                              prefixIcon: const Icon(
                                Icons.key_rounded,
                                color: Colors.white,
                              ),
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                      SizedBox(
                        width: 330,
                        height: 60,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Introduction(
                                          nameEditingController:
                                              nameEditingController.text)));
                            },
                            child: const Text(
                              'Let\'s Get Started',
                              style: TextStyle(fontSize: 20),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text('Forgot Password?')),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.copyright_outlined,
                            color: Colors.white,
                          ),
                          Text(
                            '2022 Dev Cj All Rights Reserved',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ))
        ]),
      ),
    );
  }
}
