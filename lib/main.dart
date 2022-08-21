import 'package:flutter/material.dart';
import 'package:grosmart/constant.dart';
import 'package:grosmart/dataModal/products_list.dart';
import 'package:grosmart/login%20and%20registration/Login_screen.dart';
import 'package:grosmart/screens/mainScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Categories()),
        ChangeNotifierProvider(create: (context) => Products()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: ProductOverView.nameRoute,
        routes: {
          ProductOverView.nameRoute: (context) => ProductOverView(),
          '/': (context) => const Login_registration_screen()
        },
        theme: ThemeData(
          colorScheme: Theme.of(context)
              .colorScheme
              .copyWith(primary: green, secondary: green),
          canvasColor: const Color(0xFFF4F7FE),
          appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(
                  color: green, fontSize: 34, fontWeight: FontWeight.w700)),
          textTheme: ThemeData.light().textTheme.copyWith(
                subtitle1: const TextStyle(
                    color: black_label, fontFamily: 'poppins', fontSize: 18),
                bodyText2: const TextStyle(fontFamily: 'poppins'),
                headline1: const TextStyle(
                    color: green,
                    fontSize: 30,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w700),
              ),
          inputDecorationTheme: const InputDecorationTheme(
              labelStyle: TextStyle(
                color: black_label,
                fontFamily: 'poppins',
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
              floatingLabelStyle:
                  TextStyle(fontFamily: 'poppins', color: green, fontSize: 18),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: black_label, width: 2),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: green, width: 2),
              ),
              contentPadding: EdgeInsets.zero,
              alignLabelWithHint: true),
        ),
      ),
    );
  }
}
