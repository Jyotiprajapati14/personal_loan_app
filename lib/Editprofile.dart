import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  File? galleryFile;
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF67676),
      resizeToAvoidBottomInset: false,
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: SizedBox(
                  height: 115,
                  width: 115,
                  child: Stack(
                    clipBehavior: Clip.none,
                    fit: StackFit.expand,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage("lib/assets/images/profile.jpg"),
                      ),
                      Positioned(
                          bottom: 0,
                          right: -25,
                          child: RawMaterialButton(
                            onPressed: () {
                              _showPicker(context: context);
                            },
                            elevation: 2.0,
                            fillColor: Color(0xFFF5F6F9),
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.blue,
                            ),
                            padding: EdgeInsets.all(8.0),
                            shape: CircleBorder(),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Jyoti Prajapati',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                'ID: 13567543378',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              SizedBox(height: 20),
              Container(
                height: constraints.maxHeight, // will get by column
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 10, left: 10, top: 20, bottom: 20),
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: '    Name',
                              hintStyle: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xffC6C6C6))),
                          //keyboardType: TextInputType.name,
                          onFieldSubmitted: (value) {
                            setState(() {
                              // email = value;
                            });
                          },
                          validator: (value) {
                            // if (value.isEmpty || !value.contains('@')) {
                            //   return 'Invalid email!';
                            // }
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: '   Gender',
                              hintStyle: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xffC6C6C6))),
                          //keyboardType: TextInputType.emailAddress,
                          onFieldSubmitted: (value) {
                            setState(() {});
                          },
                          validator: (value) {
                            // if (value.isEmpty || !value.contains('@')) {
                            //   return 'Invalid email!';
                            // }
                          },
                        ),
                        // SizedBox(
                        //   height: 10.0,
                        // ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: '   Residential Address',
                              hintStyle: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xffC6C6C6))),
                          //keyboardType: TextInputType.emailAddress,
                          onFieldSubmitted: (value) {
                            setState(() {});
                          },
                          validator: (value) {
                            // if (value.isEmpty || !value.contains('@')) {
                            //   return 'Invalid email!';
                            // }
                          },
                        ),
                        // SizedBox(
                        //   height: 10.0,
                        // ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: '   National ID Card Number',
                              hintStyle: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xffC6C6C6))),
                          //keyboardType: TextInputType.emailAddress,
                          onFieldSubmitted: (value) {
                            setState(() {});
                          },
                          validator: (value) {
                            // if (value.isEmpty || !value.contains('@')) {
                            //   return 'Invalid email!';
                            // }
                          },
                        ),
                        // SizedBox(
                        //   height: 10.0,
                        // ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: '   Passport Details',
                              hintStyle: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xffC6C6C6))),
                          //keyboardType: TextInputType.emailAddress,
                          onFieldSubmitted: (value) {
                            setState(() {});
                          },
                          validator: (value) {
                            // if (value.isEmpty || !value.contains('@')) {
                            //   return 'Invalid email!';
                            // }
                          },
                        ),
                        // SizedBox(
                        //   height: 10.0,
                        // ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: '   Social Security Number ',
                              hintStyle: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xffC6C6C6))),
                          //keyboardType: TextInputType.emailAddress,
                          onFieldSubmitted: (value) {
                            setState(() {});
                          },
                          validator: (value) {
                            // if (value.isEmpty || !value.contains('@')) {
                            //   return 'Invalid email!';
                            // }
                          },
                        ),
                        // SizedBox(
                        //   height: 10.0,
                        // ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: '   Phone Number',
                              hintStyle: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black)),
                          //keyboardType: TextInputType.emailAddress,
                          onFieldSubmitted: (value) {
                            setState(() {});
                          },
                          validator: (value) {
                            // if (value.isEmpty || !value.contains('@')) {
                            //   return 'Invalid email!';
                            // }
                          },
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => EditProfileScreen(),
                                  ));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffF67676),
                                fixedSize: const Size(140, 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            child: const Text(
                              'Sumit ',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        // SizedBox(height: 20),
                        Stack(children: []),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
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
