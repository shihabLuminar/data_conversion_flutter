import 'package:data_conversion_flutter/controller/home_screen_controller.dart';
import 'package:data_conversion_flutter/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeScreenController())
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
