import 'package:flutter/material.dart';
import 'package:timepicker/view/homa_page.dart';

void main() {
  runApp(TimePicker());
}

class TimePicker extends StatelessWidget {
  const TimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(
        
      ),
    );
  }
}
