// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart'; 
import 'package:image_picker/image_picker.dart';
import 'package:library_manager/models/admin_db_model.dart'; 
import 'package:library_manager/widgets/custom_appbar.dart';

class AddNewBookPage extends StatefulWidget {
  static const routeName = "add-new-book";
  const AddNewBookPage({Key? key}) : super(key: key);

  @override
  State<AddNewBookPage> createState() => _AddNewBookPageState();
}

class _AddNewBookPageState extends State<AddNewBookPage> {
  final bookNameController = TextEditingController();
  final authorNameController = TextEditingController();
  final bookQuantityController = TextEditingController();
  final discriptionController = TextEditingController();

  String? imagePatch;

  ImageSource source = ImageSource.camera;
  @override
  void dispose() {
    bookNameController.dispose();
    authorNameController.dispose();
    bookQuantityController.dispose();
    discriptionController.dispose();
    super.dispose();
  }

  String bookCategory = 'OTHERS';
  var category_items = [

    'CSE',
    'EEE',
    'MECHANICAL',
    'TEXTILE',
    'STORY',
    'HISTORY',
    'POEM',
    'ISLAMIC',
    'MOTIVATIONAL',
    'HORROR',
    
    'OTHERS',
  ];

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar("Add New Book"),
        body: Form(
          key: formKey,
          child: ListView(
            children: [
              SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  Center(
                    child: imagePatch == null
                        ? Image.asset(
                            "assets/images/book_place.png",
                            height: 100,
                            width: 100,
                            alignment: Alignment.center,
                            fit: BoxFit.cover,
                          )
                        : Image.file(
                            File(
                              imagePatch!,
                            ),
                            height: 100,
                            width: 100,
                            alignment: Alignment.center,
                            fit: BoxFit.cover,
                          ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: (MediaQuery.of(context).size.width / 2) - 70,
                      child: IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                      elevation: 10,
                                      actions: [
                                        ListTile(
                                          onTap: () {
                                            source = ImageSource.camera;
                                            _getImage();
                                            Navigator.of(context).pop();
                                          },
                                          title: Icon(
                                            Icons.camera_alt_outlined,
                                            color: Colors.deepOrange,
                                          ),
                                          subtitle: Text(
                                            "Image from camera",
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Divider(),
                                        ListTile(
                                          onTap: () {
                                            source = ImageSource.gallery;
                                            _getImage();
                                            Navigator.of(context).pop();
                                          },
                                          title: Icon(
                                            Icons.photo_library_outlined,
                                            color: Colors.deepOrange,
                                          ),
                                          subtitle: Text(
                                            "Image from Gallery",
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ));
                          },
                          icon: Icon(
                            Icons.add_a_photo,
                            color: Colors.black,
                            size: 35,
                          )))
                ],
              ),
              SizedBox(
                height: 15,
              ),

              // todo This is bookname textField section
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: bookNameController,
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.purple.withOpacity(0.1),
                      contentPadding: EdgeInsets.only(left: 10),
                      focusColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.menu_book,
                      ),
                      hintText: "Enter the book name",
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.normal),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field must not be empty';
                    } else {
                      return null;
                    }
                  },
                ),
              ),

              // todo This is author name textField section
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: authorNameController,
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.purple.withOpacity(0.1),
                      contentPadding: EdgeInsets.only(left: 10),
                      focusColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.account_circle,
                      ),
                      hintText: "Enter the author name",
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.normal),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field must not be empty';
                    } else {
                      return null;
                    }
                  },
                ),
              ),

              // todo this is book quantity textField section
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                child: TextFormField(
                  controller: bookQuantityController,
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.purple.withOpacity(0.1),
                      contentPadding: EdgeInsets.only(left: 10),
                      focusColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.compress_outlined,
                      ),
                      hintText: "Enter the book quantity",
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.normal),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field must not be empty';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                child: TextFormField(
                  controller: discriptionController,
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.w500),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.purple.withOpacity(0.1),
                      contentPadding: EdgeInsets.only(left: 10),
                      focusColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.my_library_books_outlined,
                      ),
                      hintText: "Enter the book description",
                      hintStyle: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.normal),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field must not be empty';
                    } else {
                      return null;
                    }
                  },
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Expanded(child: Container(
                      alignment: Alignment.center,
                      height: 50,
                        decoration: BoxDecoration(

                            color: Colors.purple.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(10)
                        ),

                        child: Text("Select category ->", textAlign: TextAlign.center,style: TextStyle(color: Colors.purple, fontWeight: FontWeight.w500, fontSize: 16),))),

                  SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(

                          color: Colors.purple.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: DropdownButton(
                          borderRadius: BorderRadius.circular(20),
                          underline: Text(""),
                          dropdownColor: Colors.white,



                          value: bookCategory,

                          icon: const Icon(Icons.keyboard_arrow_down),
                          style: TextStyle(color: Colors.purple, fontWeight: FontWeight.w500),
                          items: category_items.map((String items) {
                            return DropdownMenuItem(
                              value: items,

                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              bookCategory = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                child: ElevatedButton(
                    onPressed: _saveBook,
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)))),
                    child: Text(
                      "Save Book",
                      style: TextStyle(fontSize: 16),
                    )),
              ),
            ],
          ),
        ));
  }

  void _getImage() async {
    final pickedImage = await ImagePicker().pickImage(source: source);
    if (pickedImage != null) {
      setState(() {
        imagePatch = pickedImage.path;
      });
    }
  }

  void _saveBook() {
    if(formKey.currentState!.validate()){
      
    }
  }
}
