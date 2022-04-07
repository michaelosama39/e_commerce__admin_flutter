import 'dart:io';

import 'package:e_commerce_admin_flutter/core/my_colors.dart';
import 'package:e_commerce_admin_flutter/default_button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddCategories extends StatefulWidget {
  const AddCategories({Key? key}) : super(key: key);

  @override
  State<AddCategories> createState() => _AddCategoriesState();
}

class _AddCategoriesState extends State<AddCategories> {

  File? img;
  final picker = ImagePicker();
  final controller = TextEditingController();

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  String dropdownvalue = 'Item 1';

  Future pickImage(ImageSource source) async {
    try {
      final img = await picker.getImage(source: source);
      setState(() {
        this.img = File(img!.path);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 115,
                  width: 155,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        pickImage(ImageSource.gallery);
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: img != null
                          ? Image.file(
                        img!,
                        height: 80,
                        width: 80,
                      )
                          : Image.asset('assets/images/Profile Image.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                DropdownButton(
                  isExpanded: true,
                  value: dropdownvalue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  cursorColor: MyColors.orangeColor,
                  controller: controller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: MyColors.orangeColor,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: MyColors.orangeColor,
                        width: 2,
                      ),
                    ),
                    hintText: 'Enter a search term',
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                DefaultButton(
                  'Save',
                  20,
                      () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
