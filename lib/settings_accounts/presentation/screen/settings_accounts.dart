import 'package:e_commerce_admin_flutter/core/my_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsAccounts extends StatefulWidget {
  const SettingsAccounts({Key? key}) : super(key: key);

  @override
  State<SettingsAccounts> createState() => _SettingsAccountsState();
}

class _SettingsAccountsState extends State<SettingsAccounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings Accounts',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'M7mad${index++}@gmail.com',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      icon: Icon(
                        Icons.delete_forever,
                        color: MyColors.orangeColor,
                      ),
                      onPressed: () {

                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
