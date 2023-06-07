import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TimeOfDay _timeOfDay = const TimeOfDay(hour: 10, minute: 30);
  void _showTimePicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              _timeOfDay.format(context).toString(),
              style: const TextStyle(
                fontSize: 50,
              ),
            ),
            //button
            MaterialButton(
              onPressed: _showTimePicker,
              child:  const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "PICK TIME",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              color: Colors.grey.shade700,
            ),
          ],
        ),
      ),
    );
  }
}
