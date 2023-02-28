import 'package:flutter/material.dart';
import 'package:patient_app/login.dart';
import 'package:patient_app/main.dart';
import './validate_input.dart';
import './providers/new_user_provider.dart';
import 'package:provider/provider.dart';
import './models/create_account_model.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nEditingController = TextEditingController();
    TextEditingController eEditingController = TextEditingController();
    TextEditingController pEditingController = TextEditingController();
    TextEditingController phoneEditingController = TextEditingController();
    TextEditingController cEditingController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    void onSubmit() {
      final isValid = formKey.currentState!.validate();
      if (isValid) {
        formKey.currentState!.save();
        Provider.of<NUserProvider>(context, listen: false).addPerson(NewUser(
            fullName: nEditingController.text,
            emailAddress: eEditingController.text,
            mobileNumber: phoneEditingController.text));
      }
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const MyApp()));
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Create an account with us...',
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 10),
            height: 700,
            child: Card(
              margin: const EdgeInsets.all(10),
              color: const Color(0xff0E1D35),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        controller: nEditingController,
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
                            hintText: 'Full Name',
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        controller: eEditingController,
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
                        controller: phoneEditingController,
                        validator: (value) {
                          print(value);
                          if (!value!.isValidPhone) {
                            return 'Please Enter a Valid Phone Number';
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
                              Icons.phone,
                              color: Colors.white,
                            ),
                            hintText: 'Mobile',
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        controller: pEditingController,
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
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        controller: cEditingController,
                        obscureText: true,
                        validator: (value) {
                          print(value);
                          if (pEditingController.text !=
                              cEditingController.text) {
                            return 'Passwords Don\'t match';
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
                            hintText: 'Confirm Password',
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
                          // onPressed: onSubmit,
                          onPressed: onSubmit,
                          child: const Text(
                            'Create Account',
                            style: TextStyle(fontSize: 20),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
