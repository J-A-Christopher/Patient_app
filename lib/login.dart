import 'package:flutter/material.dart';
import 'package:patient_app/intro.dart';
import 'package:patient_app/signUp_screen.dart';
import './validate_input.dart';
import './models/user_model.dart';
import 'package:provider/provider.dart';
import './providers/user_provider.dart';

class Login extends StatefulWidget {
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameEditingController = TextEditingController();
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    void onSubmit() {
      final isValid = formKey.currentState!.validate();
      if (isValid) {
        formKey.currentState!.save();
        Provider.of<UserProvider>(context, listen: false).addUser(User(
            email: widget.emailEditingController.text,
            name: widget.nameEditingController.text));
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => Introduction()),
        );
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            height: 870,
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
                  margin: const EdgeInsets.all(10),
                  color: const Color(0xff0E1D35),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const Text(
                          'Log In',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            controller: widget.nameEditingController,
                            validator: (value1) {
                              print(value1);
                              if (!value1!.isValidName) {
                                return 'Please Enter a Valid Name';
                              }
                              return null;
                            },
                            style: const TextStyle(color: Colors.white),
                            // controller: widget.nameEditingController,
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
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            controller: widget.emailEditingController,
                            validator: (value) {
                              print(value);
                              if (!value!.isValidEmail) {
                                return 'Please Enter a Valid Email';
                              }
                              return null;
                            },
                            style: const TextStyle(color: Colors.white),
                            // controller: emailEditingController,
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
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            controller: widget.passwordController,
                            obscureText: true,
                            validator: (value) {
                              print(value);
                              if (!value!.isValidPassword) {
                                return 'Password Must Contain 6-20chars, atleast one digit & one letter';
                              }
                              return null;
                            },
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xFF0a2351),
                                hintStyle: const TextStyle(
                                    color: Colors.white, fontSize: 20),
                                prefixIcon: const Icon(
                                  Icons.lock,
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
                              onPressed: onSubmit,
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
                          children: [
                            const Text(
                              'Do not have an account?',
                              style: TextStyle(color: Colors.white),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SignUp()));
                                },
                                child: const Text('Sign Up'))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ))
        ]),
      ),
    );
  }
}
