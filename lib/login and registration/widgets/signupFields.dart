import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grosmart/dataModal/image_paths.dart';

import '../../constant.dart';

class signUp_fields extends StatefulWidget {
  const signUp_fields({Key? key}) : super(key: key);

  @override
  State<signUp_fields> createState() => _signUp_fieldsState();
}

class _signUp_fieldsState extends State<signUp_fields> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _houseNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            cursorColor: green,
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              labelText: 'Name',
            ),
            controller: _nameController,
          ),
          const SizedBox(
            height: 6,
          ),
          TextField(
            cursorColor: green,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(labelText: 'E-mail'),
            controller: _emailController,
          ),
          const SizedBox(
            height: 6,
          ),
          TextField(
            cursorColor: green,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: const InputDecoration(labelText: 'Password'),
            controller: _passwordController,
          ),
          const SizedBox(
            height: 6,
          ),
          TextField(
            cursorColor: green,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: const InputDecoration(labelText: 'Confirm Password'),
            controller: _confirmPasswordController,
          ),
          const SizedBox(
            height: 6,
          ),
          TextField(
            cursorColor: green,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: const InputDecoration(labelText: 'house number'),
            controller: _houseNumber,
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Location',
                      style: TextStyle(fontSize: 17, color: black_label),
                    )),
                Container(
                    margin: EdgeInsets.only(right: 20, left: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        )),
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    child: Image.asset(
                      location,
                      fit: BoxFit.cover,
                    )),
              ]),
        ],
      ),
    );
  }
}
