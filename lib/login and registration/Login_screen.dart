// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:grosmart/constant.dart';
import 'package:grosmart/login%20and%20registration/widgets/signupFields.dart';
import 'widgets/loginfields.dart';

class Login_registration_screen extends StatefulWidget {
  static const id = 'login_registration';

  const Login_registration_screen({Key? key}) : super(key: key);

  @override
  State<Login_registration_screen> createState() =>
      _Login_registration_screenState();
}

class _Login_registration_screenState extends State<Login_registration_screen>
    with SingleTickerProviderStateMixin {
  List<bool> isSelected = List.generate(2, (index) => false);
  int loginOrup = 0;

  void changePage(BuildContext context) {
    setState(() {
      DefaultTabController.of(context)?.index =
          DefaultTabController.of(context)?.index == 1 ? 0 : 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                height: (media.size.height - media.viewPadding.top) * 0.12,
                child: Text(
                  'Grocmart',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
              Container(
                height: (media.size.height - media.viewPadding.top) * 0.06,
                margin: const EdgeInsets.only(
                  left: 50,
                  right: 50,
                ),
                child: const TabBar(
                  indicatorWeight: 2,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(color: green),
                  unselectedLabelColor: green,
                  labelStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w500),
                  tabs: [
                    Tab(
                      text: 'sign up',
                    ),
                    Tab(
                      text: 'sign in',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: (media.size.height - media.viewPadding.top) * 0.02,
              ),
              Container(
                alignment: Alignment.topCenter,
                height: (media.size.height - media.viewPadding.top) * 0.73,
                padding: const EdgeInsets.symmetric(horizontal: 45),
                child: TabBarView(
                  //  dragStartBehavior: DragStartBehavior.down,
                  physics: const PageScrollPhysics(),
                  children: [
                    signUp_fields(),
                    LoginFields(callbackChange: changePage),
                  ],
                ),
              ),
              Container(
                height: (media.size.height - media.viewPadding.top) * 0.07,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: green),
                  child: Icon(
                    Icons.arrow_right_alt,
                    size: 60,
                  ),
                  onPressed: () {
                    //TODO: add func
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
