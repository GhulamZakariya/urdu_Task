import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:task_urdu/ui/add_new_order.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

          useMaterial3: true,
        ),
        home:  const AddNewOrder(),
      );
    },
  );
  }
}
