import 'package:flutter/material.dart';
import 'package:grosmart/constant.dart';
import 'package:grosmart/login%20and%20registration/Login_screen.dart';

class LoginFields extends StatefulWidget {
  void Function(BuildContext) callbackChange;
  LoginFields({Key? key, required this.callbackChange}) : super(key: key);

  @override
  State<LoginFields> createState() => _LoginFieldsState();
}

class _LoginFieldsState extends State<LoginFields> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
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
        TextButton(
          onPressed: (() {
            //TODO: add funcionalitty
          }),
          style: TextButton.styleFrom(primary: forgetPasswordColor),
          child: const Text(
            'forget your password',
            style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('dont have an account?'),
            TextButton(
              onPressed: () => widget.callbackChange(context),
              style: TextButton.styleFrom(primary: forgetPasswordColor),
              child: const Text(
                'sign up',
                style: TextStyle(
                  color: green,
                  fontFamily: 'poppins',
                  fontSize: 14,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
