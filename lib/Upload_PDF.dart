import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      home: const UploadPDFScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class UploadPDFScreen extends StatefulWidget {
  const UploadPDFScreen({super.key});

  @override
  State<UploadPDFScreen> createState() => _VideoSelectorState();
}

class _VideoSelectorState extends State<UploadPDFScreen> {
  File? galleryFile;
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    // display image selected from gallery
    return Scaffold(
      backgroundColor: Color(0xFFECECEC),
      resizeToAvoidBottomInset: false,
      body: Builder(
        builder: (BuildContext context) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 350,
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30.0,
                    ),
                    onPressed: () {
                      // Navigate back when the back button is pressed
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "{App Name} requires recent 3 months of... ",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14.0,
                    color: Color(0xFF0000000),
                  ),
                ),
                Text(
                  " statement for your bank accounts. Starting\n from {DATE}...",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 14.0,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Center(
                  child: Container(
                    // height: 80.0,
                    child: Image.asset('lib/assets/images/upload.png',
                        width: 147, height: 147, fit: BoxFit.fill),
                  ),
                ),
                SizedBox(
                  height: 110,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      _showPicker(context: context);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffF67676),
                        fixedSize: const Size(350, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      ' Upload your bank e-statement ',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  " Any Bank, It’s fine!",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _showPicker({
    required BuildContext context,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Gallery'),
                onTap: () {
                  getVideo(ImageSource.gallery);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('Camera'),
                onTap: () {
                  getVideo(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future getVideo(
    ImageSource img,
  ) async {
    final pickedFile = await picker.pickVideo(
        source: img,
        preferredCameraDevice: CameraDevice.front,
        maxDuration: const Duration(minutes: 10));
    XFile? xfilePick = pickedFile;
    setState(
      () {
        if (xfilePick != null) {
          galleryFile = File(pickedFile!.path);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(// is this context <<<
              const SnackBar(content: Text('Nothing is selected')));
        }
      },
    );
  }
}
