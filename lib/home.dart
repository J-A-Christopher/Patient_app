import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import './doctor_cartegory_screen.dart';
import 'package:provider/provider.dart';
import './providers/user_provider.dart';

TextEditingController searchEditingController = TextEditingController();

class Home extends StatefulWidget {
  // final String nameSpace;
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  File? _image;
  final _picker = ImagePicker();
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0E1D35),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Consumer<UserProvider>(
                    builder: (ctx, user, child) => Text(
                        'Hi  ${user.user.name} !',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 25)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _openImagePicker();
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const MyApp()),
                    // );
                  },
                  child: Container(
                    margin: const EdgeInsets.all(30),
                    height: 65,
                    width: 65,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green),
                    child: _image != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.file(_image!, fit: BoxFit.cover))
                        : const Icon(
                            Icons.camera_alt_rounded,
                            color: Colors.white,
                          ),
                    // child: const Icon(
                    //   Icons.camera_alt_rounded,
                    //   color: Colors.white,
                    // ),
                  ),
                ),
              ],
            ),
            const Text(
              'Keep taking \n care of your health.',
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                controller: searchEditingController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFF0a2351),
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 20),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: 'Search anything here... ',
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            const DoctorCat()
          ],
        ),
      ),
    );
  }
}
