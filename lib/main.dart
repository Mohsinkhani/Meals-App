import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:mealsapp/data/dummy_data.dart';
// import 'package:meals/data/dummy_data.dart';
// import 'package:meals/screens/categories.dart';
// import 'package:meals/screens/meals.dart';
import 'package:mealsapp/screens/categories.dart';
import 'package:mealsapp/screens/meals.dart';
import 'package:mealsapp/screens/tabs.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit (
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context,_) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(

              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home:  TabsScreen()
          );
        }
    );
  }
}